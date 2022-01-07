; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_read_list.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.cond_node*, %struct.TYPE_2__, i32 }
%struct.cond_node = type { %struct.cond_node* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cond_read_list(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cond_node*, align 8
  %7 = alloca %struct.cond_node*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.cond_node* null, %struct.cond_node** %7, align 8
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @next_entry(i32* %12, i8* %13, i32 4)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %2
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.policydb*, %struct.policydb** %4, align 8
  %24 = getelementptr inbounds %struct.policydb, %struct.policydb* %23, i32 0, i32 2
  %25 = load %struct.policydb*, %struct.policydb** %4, align 8
  %26 = getelementptr inbounds %struct.policydb, %struct.policydb* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @avtab_alloc(i32* %24, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %71

33:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.cond_node* @kzalloc(i32 8, i32 %41)
  store %struct.cond_node* %42, %struct.cond_node** %6, align 8
  %43 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  %44 = icmp ne %struct.cond_node* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %71

46:                                               ; preds = %38
  %47 = load %struct.policydb*, %struct.policydb** %4, align 8
  %48 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @cond_read_node(%struct.policydb* %47, %struct.cond_node* %48, i8* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %71

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  %59 = load %struct.policydb*, %struct.policydb** %4, align 8
  %60 = getelementptr inbounds %struct.policydb, %struct.policydb* %59, i32 0, i32 0
  store %struct.cond_node* %58, %struct.cond_node** %60, align 8
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  %63 = load %struct.cond_node*, %struct.cond_node** %7, align 8
  %64 = getelementptr inbounds %struct.cond_node, %struct.cond_node* %63, i32 0, i32 0
  store %struct.cond_node* %62, %struct.cond_node** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.cond_node*, %struct.cond_node** %6, align 8
  store %struct.cond_node* %66, %struct.cond_node** %7, align 8
  br label %67

67:                                               ; preds = %65
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %34

70:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %79

71:                                               ; preds = %53, %45, %32
  %72 = load %struct.policydb*, %struct.policydb** %4, align 8
  %73 = getelementptr inbounds %struct.policydb, %struct.policydb* %72, i32 0, i32 0
  %74 = load %struct.cond_node*, %struct.cond_node** %73, align 8
  %75 = call i32 @cond_list_destroy(%struct.cond_node* %74)
  %76 = load %struct.policydb*, %struct.policydb** %4, align 8
  %77 = getelementptr inbounds %struct.policydb, %struct.policydb* %76, i32 0, i32 0
  store %struct.cond_node* null, %struct.cond_node** %77, align 8
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %70, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @avtab_alloc(i32*, i32) #1

declare dso_local %struct.cond_node* @kzalloc(i32, i32) #1

declare dso_local i32 @cond_read_node(%struct.policydb*, %struct.cond_node*, i8*) #1

declare dso_local i32 @cond_list_destroy(%struct.cond_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
