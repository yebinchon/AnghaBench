; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_hash_eval.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_hash_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32, i32, %struct.avtab_node** }
%struct.avtab_node = type { %struct.avtab_node* }

@.str = private unnamed_addr constant [101 x i8] c"SELinux: %s:  %d entries and %d/%d buckets used, longest chain length %d sum of chain length^2 %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avtab_hash_eval(%struct.avtab* %0, i8* %1) #0 {
  %3 = alloca %struct.avtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %53, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.avtab*, %struct.avtab** %3, align 8
  %14 = getelementptr inbounds %struct.avtab, %struct.avtab* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load %struct.avtab*, %struct.avtab** %3, align 8
  %19 = getelementptr inbounds %struct.avtab, %struct.avtab* %18, i32 0, i32 2
  %20 = load %struct.avtab_node**, %struct.avtab_node*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %20, i64 %22
  %24 = load %struct.avtab_node*, %struct.avtab_node** %23, align 8
  store %struct.avtab_node* %24, %struct.avtab_node** %10, align 8
  %25 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %26 = icmp ne %struct.avtab_node* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %33, %27
  %31 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %32 = icmp ne %struct.avtab_node* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %37 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %36, i32 0, i32 0
  %38 = load %struct.avtab_node*, %struct.avtab_node** %37, align 8
  store %struct.avtab_node* %38, %struct.avtab_node** %10, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %45, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.avtab*, %struct.avtab** %3, align 8
  %59 = getelementptr inbounds %struct.avtab, %struct.avtab* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.avtab*, %struct.avtab** %3, align 8
  %63 = getelementptr inbounds %struct.avtab, %struct.avtab* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %60, i32 %61, i32 %64, i32 %65, i64 %66)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
