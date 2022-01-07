; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_testlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_testlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nlm_file = type { i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_lock = type { i8*, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64, i32*, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.nlm_cookie = type { i32 }
%struct.nlm_lockowner = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"lockd: nlmsvc_testlock(%s/%ld, ty=%d, %Ld-%Ld)\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@FILE_LOCK_DEFERRED = common dso_local global i32 0, align 4
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@nlm_granted = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"lockd: conflicting lock(ty=%d, %Ld-%Ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@nlm_lck_denied = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_testlock(%struct.svc_rqst* %0, %struct.nlm_file* %1, %struct.nlm_host* %2, %struct.nlm_lock* %3, %struct.nlm_lock* %4, %struct.nlm_cookie* %5) #0 {
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nlm_file*, align 8
  %9 = alloca %struct.nlm_host*, align 8
  %10 = alloca %struct.nlm_lock*, align 8
  %11 = alloca %struct.nlm_lock*, align 8
  %12 = alloca %struct.nlm_cookie*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlm_lockowner*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %8, align 8
  store %struct.nlm_host* %2, %struct.nlm_host** %9, align 8
  store %struct.nlm_lock* %3, %struct.nlm_lock** %10, align 8
  store %struct.nlm_lock* %4, %struct.nlm_lock** %11, align 8
  store %struct.nlm_cookie* %5, %struct.nlm_cookie** %12, align 8
  %16 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %17 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_9__* @locks_inode(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %26 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_9__* @locks_inode(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %33 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %37 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %41 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %31, i64 %35, i64 %39, i64 %43)
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %46 = call i32 @SVC_NET(%struct.svc_rqst* %45)
  %47 = call i64 @locks_in_grace(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %6
  %50 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  store i32 %50, i32* %14, align 4
  br label %146

51:                                               ; preds = %6
  %52 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %53 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to %struct.nlm_lockowner*
  store %struct.nlm_lockowner* %56, %struct.nlm_lockowner** %15, align 8
  %57 = load %struct.nlm_file*, %struct.nlm_file** %8, align 8
  %58 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %61 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %60, i32 0, i32 1
  %62 = call i32 @vfs_test_lock(i32 %59, %struct.TYPE_8__* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @FILE_LOCK_DEFERRED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @WARN_ON_ONCE(i32 1)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* @nlm_lck_denied_nolocks, align 4
  store i32 %72, i32* %14, align 4
  br label %146

73:                                               ; preds = %51
  %74 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %75 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @F_UNLCK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @nlm_granted, align 4
  store i32 %81, i32* %14, align 4
  br label %146

82:                                               ; preds = %73
  %83 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %84 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %88 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %92 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i64, i64, i64, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %90, i64 %94)
  %96 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %97 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %97, align 8
  %98 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %99 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %103 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %105 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %108 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = bitcast i32* %110 to %struct.nlm_lockowner*
  %112 = getelementptr inbounds %struct.nlm_lockowner, %struct.nlm_lockowner* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %115 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %117 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %121 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %124 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %128 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  store i64 %126, i64* %129, align 8
  %130 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %131 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.nlm_lock*, %struct.nlm_lock** %11, align 8
  %135 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  %137 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %138 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %137, i32 0, i32 1
  %139 = call i32 @locks_release_private(%struct.TYPE_8__* %138)
  %140 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %141 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  %143 = load %struct.nlm_lockowner*, %struct.nlm_lockowner** %15, align 8
  %144 = call i32 @nlmsvc_put_lockowner(%struct.nlm_lockowner* %143)
  %145 = load i32, i32* @nlm_lck_denied, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %82, %80, %71, %49
  %147 = load i32, i32* %14, align 4
  ret i32 %147
}

declare dso_local i32 @dprintk(i8*, i64, i64, i64, ...) #1

declare dso_local %struct.TYPE_9__* @locks_inode(i32) #1

declare dso_local i64 @locks_in_grace(i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i32 @vfs_test_lock(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @locks_release_private(%struct.TYPE_8__*) #1

declare dso_local i32 @nlmsvc_put_lockowner(%struct.nlm_lockowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
