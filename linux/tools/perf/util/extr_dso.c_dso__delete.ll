; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"DSO %s is still in rbtree when being deleted!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dso__delete(%struct.dso* %0) #0 {
  %2 = alloca %struct.dso*, align 8
  store %struct.dso* %0, %struct.dso** %2, align 8
  %3 = load %struct.dso*, %struct.dso** %2, align 8
  %4 = getelementptr inbounds %struct.dso, %struct.dso* %3, i32 0, i32 11
  %5 = call i32 @RB_EMPTY_NODE(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.dso*, %struct.dso** %2, align 8
  %9 = getelementptr inbounds %struct.dso, %struct.dso* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.dso*, %struct.dso** %2, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 10
  %15 = call i32 @inlines__tree_delete(i32* %14)
  %16 = load %struct.dso*, %struct.dso** %2, align 8
  %17 = getelementptr inbounds %struct.dso, %struct.dso* %16, i32 0, i32 9
  %18 = call i32 @srcline__tree_delete(i32* %17)
  %19 = load %struct.dso*, %struct.dso** %2, align 8
  %20 = getelementptr inbounds %struct.dso, %struct.dso* %19, i32 0, i32 8
  %21 = call i32 @symbols__delete(i32* %20)
  %22 = load %struct.dso*, %struct.dso** %2, align 8
  %23 = getelementptr inbounds %struct.dso, %struct.dso* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load %struct.dso*, %struct.dso** %2, align 8
  %28 = getelementptr inbounds %struct.dso, %struct.dso* %27, i32 0, i32 7
  %29 = bitcast i32* %28 to i8**
  %30 = call i32 @zfree(i8** %29)
  %31 = load %struct.dso*, %struct.dso** %2, align 8
  %32 = getelementptr inbounds %struct.dso, %struct.dso* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %12
  %34 = load %struct.dso*, %struct.dso** %2, align 8
  %35 = getelementptr inbounds %struct.dso, %struct.dso* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.dso*, %struct.dso** %2, align 8
  %40 = getelementptr inbounds %struct.dso, %struct.dso* %39, i32 0, i32 6
  %41 = bitcast i32* %40 to i8**
  %42 = call i32 @zfree(i8** %41)
  %43 = load %struct.dso*, %struct.dso** %2, align 8
  %44 = getelementptr inbounds %struct.dso, %struct.dso* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.dso*, %struct.dso** %2, align 8
  %47 = call i32 @dso__data_close(%struct.dso* %46)
  %48 = load %struct.dso*, %struct.dso** %2, align 8
  %49 = getelementptr inbounds %struct.dso, %struct.dso* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @auxtrace_cache__free(i32 %50)
  %52 = load %struct.dso*, %struct.dso** %2, align 8
  %53 = call i32 @dso_cache__free(%struct.dso* %52)
  %54 = load %struct.dso*, %struct.dso** %2, align 8
  %55 = call i32 @dso__free_a2l(%struct.dso* %54)
  %56 = load %struct.dso*, %struct.dso** %2, align 8
  %57 = getelementptr inbounds %struct.dso, %struct.dso* %56, i32 0, i32 2
  %58 = call i32 @zfree(i8** %57)
  %59 = load %struct.dso*, %struct.dso** %2, align 8
  %60 = getelementptr inbounds %struct.dso, %struct.dso* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nsinfo__zput(i32 %61)
  %63 = load %struct.dso*, %struct.dso** %2, align 8
  %64 = getelementptr inbounds %struct.dso, %struct.dso* %63, i32 0, i32 3
  %65 = call i32 @pthread_mutex_destroy(i32* %64)
  %66 = load %struct.dso*, %struct.dso** %2, align 8
  %67 = call i32 @free(%struct.dso* %66)
  ret void
}

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @inlines__tree_delete(i32*) #1

declare dso_local i32 @srcline__tree_delete(i32*) #1

declare dso_local i32 @symbols__delete(i32*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @dso__data_close(%struct.dso*) #1

declare dso_local i32 @auxtrace_cache__free(i32) #1

declare dso_local i32 @dso_cache__free(%struct.dso*) #1

declare dso_local i32 @dso__free_a2l(%struct.dso*) #1

declare dso_local i32 @nsinfo__zput(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.dso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
