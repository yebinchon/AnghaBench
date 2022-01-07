; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_add_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, %struct.gcov_info**, %struct.gcov_info* }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not add '%s' (out of memory)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"discarding saved data for %s (incompatible version)\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not add '%s' (incompatible version)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*)* @add_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_info(%struct.gcov_node* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_info**, align 8
  %6 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %7 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %8 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gcov_info** @kcalloc(i32 %11, i32 8, i32 %12)
  store %struct.gcov_info** %13, %struct.gcov_info*** %5, align 8
  %14 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %15 = icmp ne %struct.gcov_info** %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %18 = call i32 @gcov_info_filename(%struct.gcov_info* %17)
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %22 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %23 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %22, i32 0, i32 1
  %24 = load %struct.gcov_info**, %struct.gcov_info*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(%struct.gcov_info** %21, %struct.gcov_info** %24, i32 %28)
  %30 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %31 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.gcov_info*, %struct.gcov_info** %31, i64 %33
  store %struct.gcov_info* %30, %struct.gcov_info** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %20
  %38 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %39 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %38, i32 0, i32 2
  %40 = load %struct.gcov_info*, %struct.gcov_info** %39, align 8
  %41 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %42 = call i32 @gcov_info_is_compatible(%struct.gcov_info* %40, %struct.gcov_info* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %46 = call i32 @gcov_info_filename(%struct.gcov_info* %45)
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %49 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %48, i32 0, i32 2
  %50 = load %struct.gcov_info*, %struct.gcov_info** %49, align 8
  %51 = call i32 @gcov_info_free(%struct.gcov_info* %50)
  %52 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %53 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %52, i32 0, i32 2
  store %struct.gcov_info* null, %struct.gcov_info** %53, align 8
  br label %54

54:                                               ; preds = %44, %37
  br label %71

55:                                               ; preds = %20
  %56 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %57 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %56, i32 0, i32 1
  %58 = load %struct.gcov_info**, %struct.gcov_info*** %57, align 8
  %59 = getelementptr inbounds %struct.gcov_info*, %struct.gcov_info** %58, i64 0
  %60 = load %struct.gcov_info*, %struct.gcov_info** %59, align 8
  %61 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %62 = call i32 @gcov_info_is_compatible(%struct.gcov_info* %60, %struct.gcov_info* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  %65 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %66 = call i32 @gcov_info_filename(%struct.gcov_info* %65)
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %69 = call i32 @kfree(%struct.gcov_info** %68)
  br label %83

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %73 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %72, i32 0, i32 1
  %74 = load %struct.gcov_info**, %struct.gcov_info*** %73, align 8
  %75 = call i32 @kfree(%struct.gcov_info** %74)
  %76 = load %struct.gcov_info**, %struct.gcov_info*** %5, align 8
  %77 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %78 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %77, i32 0, i32 1
  store %struct.gcov_info** %76, %struct.gcov_info*** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %82 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %71, %64, %16
  ret void
}

declare dso_local %struct.gcov_info** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i32 @memcpy(%struct.gcov_info**, %struct.gcov_info**, i32) #1

declare dso_local i32 @gcov_info_is_compatible(%struct.gcov_info*, %struct.gcov_info*) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

declare dso_local i32 @kfree(%struct.gcov_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
