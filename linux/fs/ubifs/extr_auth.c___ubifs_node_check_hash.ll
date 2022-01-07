; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_node_check_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_node_check_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ubifs_node_check_hash(%struct.ubifs_info* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @__ubifs_node_calc_hash(%struct.ubifs_info* %16, i8* %17, i32* %15)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @ubifs_check_hash(%struct.ubifs_info* %24, i32* %25, i32* %15)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %28, %21
  %33 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__ubifs_node_calc_hash(%struct.ubifs_info*, i8*, i32*) #2

declare dso_local i64 @ubifs_check_hash(%struct.ubifs_info*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
