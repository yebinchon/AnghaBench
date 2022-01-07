; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_name.c_hpfs_translate_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_name.c_hpfs_translate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Long name flag mismatch - name \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" misidentified as %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"It's nothing serious. It could happen because of bug in OS/2.\0ASet checks=normal to disable this message.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"can't allocate memory for name conversion buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hpfs_translate_name(%struct.super_block* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %50

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @hpfs_is_name_long(i8* %20, i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %19
  br label %50

50:                                               ; preds = %49, %5
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %6, align 8
  br label %88

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kmalloc(i32 %56, i32 %57)
  store i8* %58, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i8*, i8** %8, align 8
  store i8* %62, i8** %6, align 8
  br label %88

63:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.super_block*, %struct.super_block** %7, align 8
  %70 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call zeroext i8 @locase(i32 %72, i8 zeroext %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 %78, i8* %82, align 1
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load i8*, i8** %12, align 8
  store i8* %87, i8** %6, align 8
  br label %88

88:                                               ; preds = %86, %60, %53
  %89 = load i8*, i8** %6, align 8
  ret i8* %89
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_is_name_long(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local zeroext i8 @locase(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
