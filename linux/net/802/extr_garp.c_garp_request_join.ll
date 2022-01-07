; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_request_join.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_request_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.garp_application = type { i64 }
%struct.garp_port = type { i32* }
%struct.garp_applicant = type { i32 }
%struct.garp_attr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GARP_EVENT_REQ_JOIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @garp_request_join(%struct.net_device* %0, %struct.garp_application* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.garp_application*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.garp_port*, align 8
  %13 = alloca %struct.garp_applicant*, align 8
  %14 = alloca %struct.garp_attr*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.garp_application* %1, %struct.garp_application** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rtnl_dereference(i32 %17)
  %19 = bitcast i8* %18 to %struct.garp_port*
  store %struct.garp_port* %19, %struct.garp_port** %12, align 8
  %20 = load %struct.garp_port*, %struct.garp_port** %12, align 8
  %21 = getelementptr inbounds %struct.garp_port, %struct.garp_port* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.garp_application*, %struct.garp_application** %8, align 8
  %24 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @rtnl_dereference(i32 %27)
  %29 = bitcast i8* %28 to %struct.garp_applicant*
  store %struct.garp_applicant* %29, %struct.garp_applicant** %13, align 8
  %30 = load %struct.garp_applicant*, %struct.garp_applicant** %13, align 8
  %31 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.garp_applicant*, %struct.garp_applicant** %13, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.garp_attr* @garp_attr_create(%struct.garp_applicant* %33, i8* %34, i32 %35, i32 %36)
  store %struct.garp_attr* %37, %struct.garp_attr** %14, align 8
  %38 = load %struct.garp_attr*, %struct.garp_attr** %14, align 8
  %39 = icmp ne %struct.garp_attr* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %5
  %41 = load %struct.garp_applicant*, %struct.garp_applicant** %13, align 8
  %42 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %5
  %47 = load %struct.garp_applicant*, %struct.garp_applicant** %13, align 8
  %48 = load %struct.garp_attr*, %struct.garp_attr** %14, align 8
  %49 = load i32, i32* @GARP_EVENT_REQ_JOIN, align 4
  %50 = call i32 @garp_attr_event(%struct.garp_applicant* %47, %struct.garp_attr* %48, i32 %49)
  %51 = load %struct.garp_applicant*, %struct.garp_applicant** %13, align 8
  %52 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.garp_attr* @garp_attr_create(%struct.garp_applicant*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @garp_attr_event(%struct.garp_applicant*, %struct.garp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
