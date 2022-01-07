; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u32.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_U32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i32*, i8*)* @unpack_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_u32(%struct.aa_ext* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %10 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %13 = load i32, i32* @AA_U32, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @unpack_nameX(%struct.aa_ext* %12, i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %19 = call i32 @inbounds(%struct.aa_ext* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %39

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %27 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = call i32 @get_unaligned(i32* %29)
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %35 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 4
  store i8* %37, i8** %35, align 8
  store i32 1, i32* %4, align 4
  br label %43

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %42 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @inbounds(%struct.aa_ext*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
