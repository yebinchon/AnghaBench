; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_xprintk.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_xprintk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }
%struct.aa_label = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"label print error\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_label_xprintk(%struct.aa_ns* %0, %struct.aa_label* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aa_ns*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %12 = icmp ne %struct.aa_label* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @use_label_hname(%struct.aa_ns* %16, %struct.aa_label* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %23 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @aa_label_asxprint(i8** %9, %struct.aa_ns* %22, %struct.aa_label* %23, i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %57

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @kfree(i8* %34)
  br label %57

36:                                               ; preds = %4
  %37 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %38 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @display_mode(%struct.aa_ns* %37, %struct.aa_label* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %44 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %47 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @label_modename(%struct.aa_ns* %46, %struct.aa_label* %47, i32 %48)
  %50 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %49)
  br label %56

51:                                               ; preds = %36
  %52 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %53 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %29, %56, %31
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @use_label_hname(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_label_asxprint(i8**, %struct.aa_ns*, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @AA_DEBUG(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @display_mode(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @label_modename(%struct.aa_ns*, %struct.aa_label*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
