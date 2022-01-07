; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_path_name.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_path_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_profile = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nullperms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.aa_label*, %struct.path*, i32, i8*, i8**, %struct.path_cond*, i32)* @path_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_name(i8* %0, %struct.aa_label* %1, %struct.path* %2, i32 %3, i8* %4, i8** %5, %struct.path_cond* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca %struct.path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.path_cond*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.aa_profile*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store %struct.aa_label* %1, %struct.aa_label** %11, align 8
  store %struct.path* %2, %struct.path** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8** %5, i8*** %15, align 8
  store %struct.path_cond* %6, %struct.path_cond** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* null, i8** %19, align 8
  %21 = load %struct.path*, %struct.path** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i8*, i8** %14, align 8
  %24 = load i8**, i8*** %15, align 8
  %25 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %26 = call %struct.TYPE_2__* @labels_profile(%struct.aa_label* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @aa_path_name(%struct.path* %21, i32 %22, i8* %23, i8** %24, i8** %19, i32 %28)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %8
  %33 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %34 = load %struct.aa_profile*, %struct.aa_profile** %18, align 8
  %35 = load %struct.aa_profile*, %struct.aa_profile** %18, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i8**, i8*** %15, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.path_cond*, %struct.path_cond** %16, align 8
  %41 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %19, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @aa_audit_file(%struct.aa_profile* %35, i32* @nullperms, i8* %36, i32 %37, i8* %39, i32* null, i32* null, i32 %42, i8* %43, i32 %44)
  %46 = call i32 @fn_for_each_confined(%struct.aa_label* %33, %struct.aa_profile* %34, i32 %45)
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @aa_path_name(%struct.path*, i32, i8*, i8**, i8**, i32) #1

declare dso_local %struct.TYPE_2__* @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, i32*, i8*, i32, i8*, i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
