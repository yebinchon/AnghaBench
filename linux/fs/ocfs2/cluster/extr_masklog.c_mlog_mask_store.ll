; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_masklog.c_mlog_mask_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_masklog.c_mlog_mask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@mlog_and_bits = common dso_local global i32 0, align 4
@mlog_not_bits = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @mlog_mask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlog_mask_store(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @strncasecmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @mlog_and_bits, align 4
  %14 = call i32 @__mlog_set_u64(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @mlog_not_bits, align 4
  %17 = call i32 @__mlog_clear_u64(i32 %15, i32 %16)
  br label %45

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strncasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @mlog_not_bits, align 4
  %25 = call i32 @__mlog_set_u64(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @mlog_and_bits, align 4
  %28 = call i32 @__mlog_clear_u64(i32 %26, i32 %27)
  br label %44

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strncasecmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @mlog_not_bits, align 4
  %36 = call i32 @__mlog_clear_u64(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @mlog_and_bits, align 4
  %39 = call i32 @__mlog_clear_u64(i32 %37, i32 %38)
  br label %43

40:                                               ; preds = %29
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %4, align 8
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @__mlog_set_u64(i32, i32) #1

declare dso_local i32 @__mlog_clear_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
