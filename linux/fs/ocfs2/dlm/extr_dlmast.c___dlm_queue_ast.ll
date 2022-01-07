; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_ast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c___dlm_queue_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, %struct.dlm_lock_resource* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"%s: res %.*s, lock %u:%llu, AST list not empty, pending %d, newlevel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: res %.*s, lock %u:%llu, AST getting flushed\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: res %.*s, lock %u:%llu, Cancelling BAST\0A\00", align 1
@LKM_IVMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dlm_queue_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = icmp ne %struct.dlm_ctxt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %12 = icmp ne %struct.dlm_lock* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %16, i32 0, i32 6
  %18 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %17, align 8
  store %struct.dlm_lock_resource* %18, %struct.dlm_lock_resource** %5, align 8
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 2
  %21 = call i32 @assert_spin_locked(i32* %20)
  %22 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %23 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %22, i32 0, i32 2
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ML_ERROR, align 4
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be64_to_cpu(i32 %42)
  %44 = call i32 @dlm_get_lock_cookie_node(i32 %43)
  %45 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be64_to_cpu(i32 %48)
  %50 = call i32 @dlm_get_lock_cookie_seq(i32 %49)
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %55 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mlog(i32 %27, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i32 %38, i32 %44, i32 %50, i32 %53, i32 %57)
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %26, %2
  %61 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %67 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %78 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be64_to_cpu(i32 %80)
  %82 = call i32 @dlm_get_lock_cookie_node(i32 %81)
  %83 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %84 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be64_to_cpu(i32 %86)
  %88 = call i32 @dlm_get_lock_cookie_seq(i32 %87)
  %89 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %72, i32 %76, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %65, %60
  %91 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %92 = call i32 @dlm_lock_get(%struct.dlm_lock* %91)
  %93 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %94 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %97 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %98 = call i64 @dlm_should_cancel_bast(%struct.dlm_ctxt* %96, %struct.dlm_lock* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %90
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %105 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %109 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %113 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be64_to_cpu(i32 %115)
  %117 = call i32 @dlm_get_lock_cookie_node(i32 %116)
  %118 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %119 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be64_to_cpu(i32 %121)
  %123 = call i32 @dlm_get_lock_cookie_seq(i32 %122)
  %124 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %107, i32 %111, i32 %117, i32 %123)
  %125 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %126 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %125, i32 0, i32 5
  store i64 0, i64* %126, align 8
  %127 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %128 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %127, i32 0, i32 4
  %129 = call i32 @list_del_init(i32* %128)
  %130 = load i32, i32* @LKM_IVMODE, align 4
  %131 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %132 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %135 = call i32 @dlm_lock_put(%struct.dlm_lock* %134)
  %136 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %138 = call i32 @dlm_lockres_release_ast(%struct.dlm_ctxt* %136, %struct.dlm_lock_resource* %137)
  br label %139

139:                                              ; preds = %100, %90
  %140 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %141 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %140, i32 0, i32 2
  %142 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %143 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %142, i32 0, i32 0
  %144 = call i32 @list_add_tail(i32* %141, i32* %143)
  %145 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %146 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %148 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock(i32* %148)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @dlm_get_lock_cookie_node(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @dlm_get_lock_cookie_seq(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @dlm_should_cancel_bast(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @dlm_lockres_release_ast(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
