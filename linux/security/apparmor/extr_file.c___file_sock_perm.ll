; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___file_sock_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___file_sock_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.file = type { i64 }
%struct.socket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.aa_label*, %struct.aa_label*, %struct.file*, i64, i64)* @__file_sock_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__file_sock_perm(i8* %0, %struct.aa_label* %1, %struct.aa_label* %2, %struct.file* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.aa_label* %1, %struct.aa_label** %9, align 8
  store %struct.aa_label* %2, %struct.aa_label** %10, align 8
  store %struct.file* %3, %struct.file** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.file*, %struct.file** %11, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.socket*
  store %struct.socket* %19, %struct.socket** %14, align 8
  %20 = load %struct.socket*, %struct.socket** %14, align 8
  %21 = icmp ne %struct.socket* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %6
  %28 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %29 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %30 = call i64 @aa_label_is_subset(%struct.aa_label* %28, %struct.aa_label* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %60

33:                                               ; preds = %27, %6
  %34 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.socket*, %struct.socket** %14, align 8
  %38 = call i32 @aa_sock_file_perm(%struct.aa_label* %34, i8* %35, i64 %36, %struct.socket* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.socket*, %struct.socket** %14, align 8
  %47 = call i32 @aa_sock_file_perm(%struct.aa_label* %43, i8* %44, i64 %45, %struct.socket* %46)
  %48 = call i32 @last_error(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.file*, %struct.file** %11, align 8
  %54 = call i32 @file_ctx(%struct.file* %53)
  %55 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @update_file_ctx(i32 %54, %struct.aa_label* %55, i64 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %32
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i64 @aa_label_is_subset(%struct.aa_label*, %struct.aa_label*) #1

declare dso_local i32 @aa_sock_file_perm(%struct.aa_label*, i8*, i64, %struct.socket*) #1

declare dso_local i32 @last_error(i32, i32) #1

declare dso_local i32 @update_file_ctx(i32, %struct.aa_label*, i64) #1

declare dso_local i32 @file_ctx(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
