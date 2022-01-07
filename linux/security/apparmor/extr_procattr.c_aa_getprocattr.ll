; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_procattr.c_aa_getprocattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_procattr.c_aa_getprocattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_ns = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FLAG_SHOW_MODE = common dso_local global i32 0, align 4
@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@FLAG_HIDDEN_UNCONFINED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_getprocattr(%struct.aa_label* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.aa_ns*, align 8
  %7 = alloca %struct.aa_ns*, align 8
  %8 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %10 = call %struct.aa_ns* @labels_ns(%struct.aa_label* %9)
  store %struct.aa_ns* %10, %struct.aa_ns** %6, align 8
  %11 = call %struct.aa_ns* (...) @aa_get_current_ns()
  store %struct.aa_ns* %11, %struct.aa_ns** %7, align 8
  %12 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %13 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %14 = call i32 @aa_ns_visible(%struct.aa_ns* %12, %struct.aa_ns* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %18 = call i32 @aa_put_ns(%struct.aa_ns* %17)
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %23 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %24 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %25 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FLAG_HIDDEN_UNCONFINED, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @aa_label_snxprint(i8* null, i32 0, %struct.aa_ns* %22, %struct.aa_label* %23, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @AA_BUG(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %21
  %43 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %44 = call i32 @aa_put_ns(%struct.aa_ns* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %82

47:                                               ; preds = %21
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 2
  %52 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %53 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %54 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %55 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FLAG_HIDDEN_UNCONFINED, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @aa_label_snxprint(i8* %49, i32 %51, %struct.aa_ns* %52, %struct.aa_label* %53, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %64 = call i32 @aa_put_ns(%struct.aa_ns* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %82

66:                                               ; preds = %47
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 10, i8* %71, align 1
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.aa_ns*, %struct.aa_ns** %7, align 8
  %79 = call i32 @aa_put_ns(%struct.aa_ns* %78)
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %66, %62, %42, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.aa_ns* @labels_ns(%struct.aa_label*) #1

declare dso_local %struct.aa_ns* @aa_get_current_ns(...) #1

declare dso_local i32 @aa_ns_visible(%struct.aa_ns*, %struct.aa_ns*, i32) #1

declare dso_local i32 @aa_put_ns(%struct.aa_ns*) #1

declare dso_local i32 @aa_label_snxprint(i8*, i32, %struct.aa_ns*, %struct.aa_label*, i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
