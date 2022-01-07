; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_seq_xprint.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_seq_xprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.aa_ns = type { i32 }
%struct.aa_label = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"label print error\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_label_seq_xprint(%struct.seq_file* %0, %struct.aa_ns* %1, %struct.aa_label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %7, align 8
  store %struct.aa_label* %2, %struct.aa_label** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %14 = icmp ne %struct.seq_file* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %19 = icmp ne %struct.aa_label* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %24 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @use_label_hname(%struct.aa_ns* %23, %struct.aa_label* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %5
  %29 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %30 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @aa_label_asxprint(i8** %11, %struct.aa_ns* %29, %struct.aa_label* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @AA_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %67

38:                                               ; preds = %28
  %39 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @kfree(i8* %42)
  br label %67

44:                                               ; preds = %5
  %45 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %46 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @display_mode(%struct.aa_ns* %45, %struct.aa_label* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %52 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %53 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %56 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @label_modename(%struct.aa_ns* %55, %struct.aa_label* %56, i32 %57)
  %59 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %58)
  br label %66

60:                                               ; preds = %44
  %61 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %62 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %63 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %60, %50
  br label %67

67:                                               ; preds = %36, %66, %38
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @use_label_hname(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @aa_label_asxprint(i8**, %struct.aa_ns*, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @AA_DEBUG(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @display_mode(%struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @label_modename(%struct.aa_ns*, %struct.aa_label*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
