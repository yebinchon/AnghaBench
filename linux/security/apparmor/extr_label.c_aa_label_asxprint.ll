; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_asxprint.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_asxprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32 }
%struct.aa_label = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_asxprint(i8** %0, %struct.aa_ns* %1, %struct.aa_label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.aa_ns*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store %struct.aa_ns* %1, %struct.aa_ns** %8, align 8
  store %struct.aa_label* %2, %struct.aa_label** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %19 = icmp ne %struct.aa_label* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %24 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @aa_label_snxprint(i8* null, i32 0, %struct.aa_ns* %23, %struct.aa_label* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %52

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %31
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %49 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @aa_label_snxprint(i8* %45, i32 %47, %struct.aa_ns* %48, %struct.aa_label* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %40, %29
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_label_snxprint(i8*, i32, %struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
