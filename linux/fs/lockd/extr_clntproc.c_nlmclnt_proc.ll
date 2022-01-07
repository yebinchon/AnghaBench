; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_proc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { %struct.nlmclnt_operations* }
%struct.nlmclnt_operations = type { i32 (i8*)* }
%struct.file_lock = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (%struct.file_lock*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlm_rqst = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lockd: clnt proc returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmclnt_proc(%struct.nlm_host* %0, i32 %1, %struct.file_lock* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlm_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlm_rqst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlmclnt_operations*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file_lock* %2, %struct.file_lock** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %14 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %13, i32 0, i32 0
  %15 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %14, align 8
  store %struct.nlmclnt_operations* %15, %struct.nlmclnt_operations** %12, align 8
  %16 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %17 = call %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %16)
  store %struct.nlm_rqst* %17, %struct.nlm_rqst** %10, align 8
  %18 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %19 = icmp eq %struct.nlm_rqst* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %114

23:                                               ; preds = %4
  %24 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %12, align 8
  %25 = icmp ne %struct.nlmclnt_operations* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %12, align 8
  %28 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %27, i32 0, i32 0
  %29 = load i32 (i8*)*, i32 (i8*)** %28, align 8
  %30 = icmp ne i32 (i8*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.nlmclnt_operations*, %struct.nlmclnt_operations** %12, align 8
  %33 = getelementptr inbounds %struct.nlmclnt_operations, %struct.nlmclnt_operations* %32, i32 0, i32 0
  %34 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 %34(i8* %35)
  br label %37

37:                                               ; preds = %31, %26, %23
  %38 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %39 = load %struct.nlm_host*, %struct.nlm_host** %6, align 8
  %40 = call i32 @nlmclnt_locks_init_private(%struct.file_lock* %38, %struct.nlm_host* %39)
  %41 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %49 = call i32 @nlmclnt_release_call(%struct.nlm_rqst* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %114

52:                                               ; preds = %37
  %53 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %54 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %55 = call i32 @nlmclnt_setlockargs(%struct.nlm_rqst* %53, %struct.file_lock* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %58 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @IS_SETLK(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @IS_SETLKW(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62, %52
  %67 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %68 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @F_UNLCK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @IS_SETLKW(i32 %73)
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %79 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %82 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %83 = call i32 @nlmclnt_lock(%struct.nlm_rqst* %81, %struct.file_lock* %82)
  store i32 %83, i32* %11, align 4
  br label %88

84:                                               ; preds = %66
  %85 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %86 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %87 = call i32 @nlmclnt_unlock(%struct.nlm_rqst* %85, %struct.file_lock* %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %72
  br label %101

89:                                               ; preds = %62
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @IS_GETLK(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.nlm_rqst*, %struct.nlm_rqst** %10, align 8
  %95 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %96 = call i32 @nlmclnt_test(%struct.nlm_rqst* %94, %struct.file_lock* %95)
  store i32 %96, i32* %11, align 4
  br label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %97, %93
  br label %101

101:                                              ; preds = %100, %88
  %102 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %103 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %105, align 8
  %107 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %108 = call i32 %106(%struct.file_lock* %107)
  %109 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %110 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %109, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %101, %47, %20
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_locks_init_private(%struct.file_lock*, %struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_release_call(%struct.nlm_rqst*) #1

declare dso_local i32 @nlmclnt_setlockargs(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i64 @IS_SETLK(i32) #1

declare dso_local i64 @IS_SETLKW(i32) #1

declare dso_local i32 @nlmclnt_lock(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @nlmclnt_unlock(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i64 @IS_GETLK(i32) #1

declare dso_local i32 @nlmclnt_test(%struct.nlm_rqst*, %struct.file_lock*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
