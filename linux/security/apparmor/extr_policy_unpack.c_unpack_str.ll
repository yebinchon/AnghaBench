; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_str.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i8**, i8*)* @unpack_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_str(%struct.aa_ext* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %12 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %16 = load i32, i32* @AA_STRING, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @unpack_nameX(%struct.aa_ext* %15, i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %22 = call i64 @unpack_u16_chunk(%struct.aa_ext* %21, i8** %8)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %25
  %35 = load i8*, i8** %8, align 8
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %3
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %44 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i64 @unpack_u16_chunk(%struct.aa_ext*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
