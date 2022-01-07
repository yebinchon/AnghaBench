; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32 }
%struct.avtab = type { i32, %struct.avtab_node**, i32 }
%struct.avtab_node = type { %struct.avtab_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avtab_write(%struct.policydb* %0, %struct.avtab* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.avtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca [1 x i32], align 4
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.avtab* %1, %struct.avtab** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.avtab*, %struct.avtab** %6, align 8
  %13 = getelementptr inbounds %struct.avtab, %struct.avtab* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @put_entry(i32* %17, i32 4, i32 1, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %57, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.avtab*, %struct.avtab** %6, align 8
  %28 = getelementptr inbounds %struct.avtab, %struct.avtab* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.avtab*, %struct.avtab** %6, align 8
  %33 = getelementptr inbounds %struct.avtab, %struct.avtab* %32, i32 0, i32 1
  %34 = load %struct.avtab_node**, %struct.avtab_node*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %34, i64 %36
  %38 = load %struct.avtab_node*, %struct.avtab_node** %37, align 8
  store %struct.avtab_node* %38, %struct.avtab_node** %10, align 8
  br label %39

39:                                               ; preds = %52, %31
  %40 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %41 = icmp ne %struct.avtab_node* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.policydb*, %struct.policydb** %5, align 8
  %44 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @avtab_write_item(%struct.policydb* %43, %struct.avtab_node* %44, i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %54 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %53, i32 0, i32 0
  %55 = load %struct.avtab_node*, %struct.avtab_node** %54, align 8
  store %struct.avtab_node* %55, %struct.avtab_node** %10, align 8
  br label %39

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %25

60:                                               ; preds = %25
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %49, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

declare dso_local i32 @avtab_write_item(%struct.policydb*, %struct.avtab_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
