; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_setlockargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_setlockargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32, %struct.TYPE_9__*, %struct.nlm_args }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.nlm_args = type { i32, %struct.nlm_lock }
%struct.nlm_lock = type { i8*, %struct.TYPE_14__, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.file_lock = type { i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%u@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_rqst*, %struct.file_lock*)* @nlmclnt_setlockargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmclnt_setlockargs(%struct.nlm_rqst* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.nlm_rqst*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.nlm_args*, align 8
  %6 = alloca %struct.nlm_lock*, align 8
  %7 = alloca i8*, align 8
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %8 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %8, i32 0, i32 2
  store %struct.nlm_args* %9, %struct.nlm_args** %5, align 8
  %10 = load %struct.nlm_args*, %struct.nlm_args** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %10, i32 0, i32 1
  store %struct.nlm_lock* %11, %struct.nlm_lock** %6, align 8
  %12 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.nlm_args*, %struct.nlm_args** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %19, i32 0, i32 0
  %21 = call i32 @nlmclnt_next_cookie(i32* %20)
  %22 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %23 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %22, i32 0, i32 4
  %24 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @locks_inode(i32 %26)
  %28 = call i32 @NFS_FH(i32 %27)
  %29 = call i32 @memcpy(i32* %23, i32 %28, i32 4)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %32 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %34 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %37 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %40 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @snprintf(i32 %41, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50)
  %52 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %53 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %63 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %68 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %74 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %77 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nlm_lock*, %struct.nlm_lock** %6, align 8
  %80 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  ret void
}

declare dso_local i32 @nlmclnt_next_cookie(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i32 @locks_inode(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
