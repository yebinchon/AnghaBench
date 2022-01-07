; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_nameX.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_nameX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i32, i8*)* @unpack_nameX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_nameX(%struct.aa_ext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %12 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %15 = load i32, i32* @AA_NAME, align 4
  %16 = call i64 @unpack_X(%struct.aa_ext* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %19 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %20 = call i64 @unpack_u16_chunk(%struct.aa_ext* %19, i8** %9)
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %26, %23
  br label %53

40:                                               ; preds = %34, %18
  br label %46

41:                                               ; preds = %3
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %53

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  %47 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @unpack_X(%struct.aa_ext* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %57

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %44, %39
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %56 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %51
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @unpack_X(%struct.aa_ext*, i32) #1

declare dso_local i64 @unpack_u16_chunk(%struct.aa_ext*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
