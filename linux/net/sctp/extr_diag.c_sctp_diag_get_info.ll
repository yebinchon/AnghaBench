; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_diag.c_sctp_diag_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.inet_diag_msg = type { i32, i32 }
%struct.sctp_infox = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.inet_diag_msg*, i8*)* @sctp_diag_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_diag_get_info(%struct.sock* %0, %struct.inet_diag_msg* %1, i8* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_diag_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sctp_infox*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.inet_diag_msg* %1, %struct.inet_diag_msg** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.sctp_infox*
  store %struct.sctp_infox* %9, %struct.sctp_infox** %7, align 8
  %10 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %11 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %16 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @atomic_read(i32* %18)
  %20 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %21 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %28 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %34 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inet_diag_msg*, %struct.inet_diag_msg** %5, align 8
  %39 = getelementptr inbounds %struct.inet_diag_msg, %struct.inet_diag_msg* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %14
  %41 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %42 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %48 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.sctp_infox*, %struct.sctp_infox** %7, align 8
  %51 = getelementptr inbounds %struct.sctp_infox, %struct.sctp_infox* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sctp_get_sctp_info(%struct.sock* %46, %struct.TYPE_2__* %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sctp_get_sctp_info(%struct.sock*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
