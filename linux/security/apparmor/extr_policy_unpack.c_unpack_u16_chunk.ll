; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u16_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u16_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aa_ext*, i8**)* @unpack_u16_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unpack_u16_chunk(%struct.aa_ext* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %9 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %12 = call i32 @inbounds(%struct.aa_ext* %11, i64 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %17 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = call i32 @get_unaligned(i32* %19)
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %23 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %23, align 8
  %26 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @inbounds(%struct.aa_ext* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %42

31:                                               ; preds = %15
  %32 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %33 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %38 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %36
  store i8* %40, i8** %38, align 8
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %46

42:                                               ; preds = %30, %14
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %45 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i32 @inbounds(%struct.aa_ext*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
