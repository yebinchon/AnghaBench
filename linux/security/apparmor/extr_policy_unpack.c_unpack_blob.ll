; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_blob.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aa_ext*, i8**, i8*)* @unpack_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unpack_blob(%struct.aa_ext* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %11 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %14 = load i32, i32* @AA_BLOB, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @unpack_nameX(%struct.aa_ext* %13, i32 %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %20 = call i64 @inbounds(%struct.aa_ext* %19, i64 8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %51

23:                                               ; preds = %18
  %24 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %25 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = call i32 @get_unaligned(i32* %27)
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %31 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  %34 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @inbounds(%struct.aa_ext* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %23
  %39 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %40 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %45 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %43
  store i8* %47, i8** %45, align 8
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %4, align 8
  br label %55

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49, %3
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %54 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i64 0, i64* %4, align 8
  br label %55

55:                                               ; preds = %51, %38
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i64 @inbounds(%struct.aa_ext*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
