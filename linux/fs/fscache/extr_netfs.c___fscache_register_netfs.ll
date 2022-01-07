; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_netfs.c___fscache_register_netfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_netfs.c___fscache_register_netfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_netfs = type { i32, %struct.fscache_cookie*, i32 }
%struct.fscache_cookie = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%s}\00", align 1
@fscache_fsdef_index = common dso_local global i32 0, align 4
@fscache_fsdef_netfs_def = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_ENABLED = common dso_local global i32 0, align 4
@fscache_cookie_discard = common dso_local global i32 0, align 4
@fscache_cookie_get_register_netfs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Netfs '%s' registered for caching\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@fscache_cookie_put_dup_netfs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c" = -EEXIST\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fscache_register_netfs(%struct.fscache_netfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fscache_netfs*, align 8
  %4 = alloca %struct.fscache_cookie*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_netfs* %0, %struct.fscache_netfs** %3, align 8
  %6 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %11 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %14 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strlen(i32 %15)
  %17 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %18 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %17, i32 0, i32 2
  %19 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %20 = call %struct.fscache_cookie* @fscache_alloc_cookie(i32* @fscache_fsdef_index, i32* @fscache_fsdef_netfs_def, i32 %12, i32 %16, i32* %18, i32 4, %struct.fscache_netfs* %19, i32 0)
  store %struct.fscache_cookie* %20, %struct.fscache_cookie** %4, align 8
  %21 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %22 = icmp ne %struct.fscache_cookie* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %1
  %28 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %33 = call %struct.fscache_cookie* @fscache_hash_cookie(%struct.fscache_cookie* %32)
  store %struct.fscache_cookie* %33, %struct.fscache_cookie** %5, align 8
  %34 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %35 = icmp ne %struct.fscache_cookie* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %68

37:                                               ; preds = %27
  %38 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %40 = icmp ne %struct.fscache_cookie* %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %43 = load i32, i32* @fscache_cookie_discard, align 4
  %44 = call i32 @trace_fscache_cookie(%struct.fscache_cookie* %42, i32 %43, i32 1)
  %45 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %46 = call i32 @fscache_free_cookie(%struct.fscache_cookie* %45)
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %49 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* @fscache_cookie_get_register_netfs, align 4
  %52 = call i32 @fscache_cookie_get(%struct.TYPE_2__* %50, i32 %51)
  %53 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %54 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %59 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %60 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %59, i32 0, i32 1
  store %struct.fscache_cookie* %58, %struct.fscache_cookie** %60, align 8
  %61 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %62 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.fscache_netfs*, %struct.fscache_netfs** %3, align 8
  %66 = call i32 @trace_fscache_netfs(%struct.fscache_netfs* %65)
  %67 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

68:                                               ; preds = %36
  %69 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %70 = load i32, i32* @fscache_cookie_put_dup_netfs, align 4
  %71 = call i32 @fscache_cookie_put(%struct.fscache_cookie* %69, i32 %70)
  %72 = call i32 @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %47, %23
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local %struct.fscache_cookie* @fscache_alloc_cookie(i32*, i32*, i32, i32, i32*, i32, %struct.fscache_netfs*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_cookie* @fscache_hash_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @trace_fscache_cookie(%struct.fscache_cookie*, i32, i32) #1

declare dso_local i32 @fscache_free_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @fscache_cookie_get(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @trace_fscache_netfs(%struct.fscache_netfs*) #1

declare dso_local i32 @fscache_cookie_put(%struct.fscache_cookie*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
