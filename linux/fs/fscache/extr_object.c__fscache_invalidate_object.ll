; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c__fscache_invalidate_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c__fscache_invalidate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { %struct.TYPE_4__*, i32, %struct.fscache_cookie*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fscache_cookie = type { i32, i32, i32 }
%struct.fscache_operation = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"{OBJ%x},%d\00", align 1
@FSCACHE_OBJECT_RETIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" [no cookie]\00", align 1
@KILL_OBJECT = common dso_local global i32 0, align 4
@FSCACHE_OBJECT_PENDING_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FSCACHE_OP_ASYNC = common dso_local global i32 0, align 4
@FSCACHE_OP_EXCLUSIVE = common dso_local global i32 0, align 4
@FSCACHE_OP_UNUSE_COOKIE = common dso_local global i32 0, align 4
@fscache_page_op_invalidate = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_NO_DATA_YET = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_INVALIDATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" [ok]\00", align 1
@UPDATE_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" [ENOMEM]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" [EIO]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @_fscache_invalidate_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @_fscache_invalidate_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_state*, align 8
  %4 = alloca %struct.fscache_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fscache_operation*, align 8
  %7 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %9 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %8, i32 0, i32 2
  %10 = load %struct.fscache_cookie*, %struct.fscache_cookie** %9, align 8
  store %struct.fscache_cookie* %10, %struct.fscache_cookie** %7, align 8
  %11 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %12 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %17 = call i32 @fscache_use_cookie(%struct.fscache_object* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %21 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %20, i32 0, i32 2
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %23 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %22, i32 0, i32 2
  %24 = call i32 @radix_tree_empty(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @FSCACHE_OBJECT_RETIRED, align 4
  %27 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %28 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %27, i32 0, i32 1
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  %30 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @KILL_OBJECT, align 4
  %32 = call %struct.fscache_state* @transit_to(i32 %31)
  store %struct.fscache_state* %32, %struct.fscache_state** %3, align 8
  br label %124

33:                                               ; preds = %2
  %34 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %35 = call i32 @fscache_invalidate_writes(%struct.fscache_cookie* %34)
  %36 = load i32, i32* @FSCACHE_OBJECT_PENDING_WRITE, align 4
  %37 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %38 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %41 = call i32 @fscache_cancel_all_ops(%struct.fscache_object* %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.fscache_operation* @kzalloc(i32 4, i32 %42)
  store %struct.fscache_operation* %43, %struct.fscache_operation** %6, align 8
  %44 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %45 = icmp ne %struct.fscache_operation* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %103

47:                                               ; preds = %33
  %48 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %49 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %50 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %51 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fscache_operation_init(%struct.fscache_cookie* %48, %struct.fscache_operation* %49, i32 %56, i32* null, i32* null)
  %58 = load i32, i32* @FSCACHE_OP_ASYNC, align 4
  %59 = load i32, i32* @FSCACHE_OP_EXCLUSIVE, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @FSCACHE_OP_UNUSE_COOKIE, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %66 = getelementptr inbounds %struct.fscache_operation, %struct.fscache_operation* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %68 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %69 = load i32, i32* @fscache_page_op_invalidate, align 4
  %70 = call i32 @trace_fscache_page_op(%struct.fscache_cookie* %67, i32* null, %struct.fscache_operation* %68, i32 %69)
  %71 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %72 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %75 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %76 = call i64 @fscache_submit_exclusive_op(%struct.fscache_object* %74, %struct.fscache_operation* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %47
  br label %111

79:                                               ; preds = %47
  %80 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %81 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %84 = call i32 @fscache_put_operation(%struct.fscache_operation* %83)
  %85 = load i32, i32* @FSCACHE_COOKIE_NO_DATA_YET, align 4
  %86 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %87 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %90 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %91 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %90, i32 0, i32 1
  %92 = call i64 @test_and_clear_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %96 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %95, i32 0, i32 1
  %97 = load i32, i32* @FSCACHE_COOKIE_INVALIDATING, align 4
  %98 = call i32 @wake_up_bit(i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %79
  %100 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @UPDATE_OBJECT, align 4
  %102 = call %struct.fscache_state* @transit_to(i32 %101)
  store %struct.fscache_state* %102, %struct.fscache_state** %3, align 8
  br label %124

103:                                              ; preds = %46
  %104 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %105 = call i32 @fscache_mark_object_dead(%struct.fscache_object* %104)
  %106 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %107 = call i32 @fscache_unuse_cookie(%struct.fscache_object* %106)
  %108 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @KILL_OBJECT, align 4
  %110 = call %struct.fscache_state* @transit_to(i32 %109)
  store %struct.fscache_state* %110, %struct.fscache_state** %3, align 8
  br label %124

111:                                              ; preds = %78
  %112 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %113 = call i32 @fscache_mark_object_dead(%struct.fscache_object* %112)
  %114 = load %struct.fscache_cookie*, %struct.fscache_cookie** %7, align 8
  %115 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.fscache_object*, %struct.fscache_object** %4, align 8
  %118 = call i32 @fscache_unuse_cookie(%struct.fscache_object* %117)
  %119 = load %struct.fscache_operation*, %struct.fscache_operation** %6, align 8
  %120 = call i32 @kfree(%struct.fscache_operation* %119)
  %121 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @KILL_OBJECT, align 4
  %123 = call %struct.fscache_state* @transit_to(i32 %122)
  store %struct.fscache_state* %123, %struct.fscache_state** %3, align 8
  br label %124

124:                                              ; preds = %111, %103, %99, %19
  %125 = load %struct.fscache_state*, %struct.fscache_state** %3, align 8
  ret %struct.fscache_state* %125
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @fscache_use_cookie(%struct.fscache_object*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @radix_tree_empty(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_state* @transit_to(i32) #1

declare dso_local i32 @fscache_invalidate_writes(%struct.fscache_cookie*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fscache_cancel_all_ops(%struct.fscache_object*) #1

declare dso_local %struct.fscache_operation* @kzalloc(i32, i32) #1

declare dso_local i32 @fscache_operation_init(%struct.fscache_cookie*, %struct.fscache_operation*, i32, i32*, i32*) #1

declare dso_local i32 @trace_fscache_page_op(%struct.fscache_cookie*, i32*, %struct.fscache_operation*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @fscache_submit_exclusive_op(%struct.fscache_object*, %struct.fscache_operation*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fscache_put_operation(%struct.fscache_operation*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @fscache_mark_object_dead(%struct.fscache_object*) #1

declare dso_local i32 @fscache_unuse_cookie(%struct.fscache_object*) #1

declare dso_local i32 @kfree(%struct.fscache_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
