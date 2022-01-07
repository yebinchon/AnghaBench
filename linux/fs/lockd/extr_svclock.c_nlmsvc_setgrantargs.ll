; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_setgrantargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_setgrantargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.nlm_lock = type { %struct.TYPE_10__, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.nlm_lockowner = type { i32 }

@NLMCLNT_OHSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_rqst*, %struct.nlm_lock*)* @nlmsvc_setgrantargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_setgrantargs(%struct.nlm_rqst* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_rqst*, align 8
  %5 = alloca %struct.nlm_lock*, align 8
  %6 = alloca i8*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %4, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %5, align 8
  %7 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %8 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %12 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %11, i32 0, i32 1
  %13 = call i32 @locks_copy_lock(i32* %10, %struct.TYPE_12__* %12)
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %19 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %18, i32 0, i32 2
  %20 = call i32 @memcpy(i32* %17, i32* %19, i32 4)
  %21 = call %struct.TYPE_11__* (...) @utsname()
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %29 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 8
  %37 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %38 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %41 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32* %39, i32** %44, align 8
  %45 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %46 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.nlm_lockowner*
  %50 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %53 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %57 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NLMCLNT_OHSIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %2
  %63 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %64 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kmalloc(i32 %66, i32 %67)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %96

72:                                               ; preds = %62
  %73 = load i8*, i8** %6, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %76 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32* %74, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %2
  %81 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %82 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %88 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %92 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i32* %86, i32* %90, i32 %94)
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %80, %71
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @locks_copy_lock(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @utsname(...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
