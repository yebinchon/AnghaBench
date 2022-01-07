; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, %struct.gss_auth*, i32, i32, i32, i32, i32, i32 }
%struct.gss_auth = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RPCSEC_GSS upcall waitq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gss_upcall_msg* (%struct.gss_auth*, i32, i8*)* @gss_alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gss_upcall_msg* @gss_alloc_msg(%struct.gss_auth* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.gss_upcall_msg*, align 8
  %5 = alloca %struct.gss_auth*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gss_upcall_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gss_auth* %0, %struct.gss_auth** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.gss_upcall_msg* @kzalloc(i32 40, i32 %13)
  store %struct.gss_upcall_msg* %14, %struct.gss_upcall_msg** %8, align 8
  %15 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %16 = icmp eq %struct.gss_upcall_msg* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.gss_auth*, %struct.gss_auth** %5, align 8
  %20 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_pipe_version(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %83

27:                                               ; preds = %18
  %28 = load %struct.gss_auth*, %struct.gss_auth** %5, align 8
  %29 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %38 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %40 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %43 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %42, i32 0, i32 5
  %44 = call i32 @rpc_init_wait_queue(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %46 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %45, i32 0, i32 4
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %49 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %48, i32 0, i32 3
  %50 = call i32 @refcount_set(i32* %49, i32 1)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %53 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.gss_auth*, %struct.gss_auth** %5, align 8
  %55 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %56 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %55, i32 0, i32 1
  store %struct.gss_auth* %54, %struct.gss_auth** %56, align 8
  %57 = load %struct.gss_auth*, %struct.gss_auth** %5, align 8
  %58 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %57, i32 0, i32 1
  %59 = call i32 @kref_get(i32* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %27
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @GFP_NOFS, align 4
  %65 = call i32 @kstrdup_const(i8* %63, i32 %64)
  %66 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %67 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %69 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %78

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %27
  %77 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  store %struct.gss_upcall_msg* %77, %struct.gss_upcall_msg** %4, align 8
  br label %89

78:                                               ; preds = %72
  %79 = load %struct.gss_auth*, %struct.gss_auth** %5, align 8
  %80 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @put_pipe_version(i32 %81)
  br label %83

83:                                               ; preds = %78, %26
  %84 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %8, align 8
  %85 = call i32 @kfree(%struct.gss_upcall_msg* %84)
  br label %86

86:                                               ; preds = %83, %17
  %87 = load i32, i32* %10, align 4
  %88 = call %struct.gss_upcall_msg* @ERR_PTR(i32 %87)
  store %struct.gss_upcall_msg* %88, %struct.gss_upcall_msg** %4, align 8
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %4, align 8
  ret %struct.gss_upcall_msg* %90
}

declare dso_local %struct.gss_upcall_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @get_pipe_version(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rpc_init_wait_queue(i32*, i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

declare dso_local i32 @put_pipe_version(i32) #1

declare dso_local i32 @kfree(%struct.gss_upcall_msg*) #1

declare dso_local %struct.gss_upcall_msg* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
