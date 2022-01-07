; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_strdup.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i8**, i8*)* @unpack_strdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_strdup(%struct.aa_ext* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %12 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @unpack_str(%struct.aa_ext* %14, i8** %8, i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8**, i8*** %6, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmemdup(i8* %22, i32 %23, i32 %24)
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %33 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %30, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @unpack_str(%struct.aa_ext*, i8**, i8*) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
