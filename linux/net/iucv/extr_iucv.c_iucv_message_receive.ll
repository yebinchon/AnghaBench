; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_message_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_receive(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iucv_path*, align 8
  %9 = alloca %struct.iucv_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %8, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %16 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IUCV_IPRMDATA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %23 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64*, i64** %13, align 8
  %28 = call i32 @iucv_message_receive_iprmdata(%struct.iucv_path* %22, %struct.iucv_message* %23, i32 %24, i8* %25, i64 %26, i64* %27)
  store i32 %28, i32* %7, align 4
  br label %40

29:                                               ; preds = %6
  %30 = call i32 (...) @local_bh_disable()
  %31 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %32 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64*, i64** %13, align 8
  %37 = call i32 @__iucv_message_receive(%struct.iucv_path* %31, %struct.iucv_message* %32, i32 %33, i8* %34, i64 %35, i64* %36)
  store i32 %37, i32* %14, align 4
  %38 = call i32 (...) @local_bh_enable()
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29, %21
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @iucv_message_receive_iprmdata(%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i64, i64*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__iucv_message_receive(%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i64, i64*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
