; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_invalidate_writes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_invalidate_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32, i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FSCACHE_COOKIE_PENDING_TAG = common dso_local global i32 0, align 4
@fscache_page_radix_delete = common dso_local global i32 0, align 4
@fscache_page_inval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_invalidate_writes(%struct.fscache_cookie* %0) #0 {
  %2 = alloca %struct.fscache_cookie*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca [16 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %2, align 8
  %7 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %72, %1
  %9 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %10 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %13 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %12, i32 0, i32 2
  %14 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i8** %15)
  %17 = load i32, i32* @FSCACHE_COOKIE_PENDING_TAG, align 4
  %18 = call i32 @radix_tree_gang_lookup_tag(i32* %13, i8** %14, i32 0, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %8
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %23 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  br label %73

25:                                               ; preds = %8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.page*
  store %struct.page* %36, %struct.page** %3, align 8
  %37 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %38 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %37, i32 0, i32 2
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @radix_tree_delete(i32* %38, i32 %41)
  %43 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = load i32, i32* @fscache_page_radix_delete, align 4
  %46 = call i32 @trace_fscache_page(%struct.fscache_cookie* %43, %struct.page* %44, i32 %45)
  %47 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = load i32, i32* @fscache_page_inval, align 4
  %50 = call i32 @trace_fscache_page(%struct.fscache_cookie* %47, %struct.page* %48, i32 %49)
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %56 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %69, %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i8*], [16 x i8*]* %4, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @put_page(i8* %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  br label %60

72:                                               ; preds = %60
  br label %8

73:                                               ; preds = %21
  %74 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %75 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %74, i32 0, i32 0
  %76 = call i32 @wake_up_bit(i32* %75, i32 0)
  %77 = load %struct.fscache_cookie*, %struct.fscache_cookie** %2, align 8
  %78 = call i32 @trace_fscache_wake_cookie(%struct.fscache_cookie* %77)
  %79 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup_tag(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @trace_fscache_page(%struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @put_page(i8*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @trace_fscache_wake_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
