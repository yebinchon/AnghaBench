; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_array.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aa_ext*, i8*)* @unpack_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unpack_array(%struct.aa_ext* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %9 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %12 = load i32, i32* @AA_ARRAY, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @unpack_nameX(%struct.aa_ext* %11, i32 %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %18 = call i32 @inbounds(%struct.aa_ext* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  %22 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %23 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = call i32 @get_unaligned(i32* %25)
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %30 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 4
  store i8* %32, i8** %30, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  br label %40

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %39 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %21
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @inbounds(%struct.aa_ext*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
