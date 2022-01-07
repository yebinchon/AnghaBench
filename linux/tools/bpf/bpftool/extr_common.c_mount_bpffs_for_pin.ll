; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_mount_bpffs_for_pin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_common.c_mount_bpffs_for_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_MAX_LEN = common dso_local global i32 0, align 4
@block_mount = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"no BPF file system found, not mounting it due to --nomount option\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"can't mount BPF file system to pin the object (%s): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_bpffs_for_pin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @ERR_MAX_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strcpy(i8* %16, i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @dirname(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @is_bpffs(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %44

25:                                               ; preds = %1
  %26 = load i64, i64* @block_mount, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @ERR_MAX_LEN, align 4
  %33 = call i32 @mnt_fs(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @ERR_MAX_LEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %11, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 (i8*, ...) @p_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %11)
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %28, %24
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %48)
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @malloc(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i64 @is_bpffs(i8*) #2

declare dso_local i32 @p_err(i8*, ...) #2

declare dso_local i32 @mnt_fs(i8*, i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
