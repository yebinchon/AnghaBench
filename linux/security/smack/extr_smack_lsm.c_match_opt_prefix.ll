; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_match_opt_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_match_opt_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@smk_mount_opts = common dso_local global %struct.TYPE_3__* null, align 8
@Opt_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @match_opt_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_opt_prefix(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smk_mount_opts, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smk_mount_opts, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %22, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smk_mount_opts, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @memcmp(i8* %27, i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26, %15
  br label %63

38:                                               ; preds = %26
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 61
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %38
  br label %63

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @smk_mount_opts, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %50, %37
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %10

66:                                               ; preds = %10
  %67 = load i32, i32* @Opt_error, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
