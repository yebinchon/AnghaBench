; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_reset_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_reset_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.tcp_fastopen_context = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8** }
%struct.fastopen_queue = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fastopen_queue }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcp_fastopen_ctx_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_fastopen_reset_cipher(%struct.net* %0, %struct.sock* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tcp_fastopen_context*, align 8
  %10 = alloca %struct.tcp_fastopen_context*, align 8
  %11 = alloca %struct.fastopen_queue*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tcp_fastopen_context* @kmalloc(i32 16, i32 %13)
  store %struct.tcp_fastopen_context* %14, %struct.tcp_fastopen_context** %9, align 8
  %15 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %16 = icmp ne %struct.tcp_fastopen_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  br label %121

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @get_unaligned_le64(i8* %21)
  %23 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %24 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %22, i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr i8, i8* %30, i64 8
  %32 = call i8* @get_unaligned_le64(i8* %31)
  %33 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %34 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %32, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %20
  %43 = load i8*, i8** %8, align 8
  %44 = call i8* @get_unaligned_le64(i8* %43)
  %45 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %46 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %44, i8** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr i8, i8* %52, i64 8
  %54 = call i8* @get_unaligned_le64(i8* %53)
  %55 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %56 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %54, i8** %61, align 8
  %62 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %63 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  br label %67

64:                                               ; preds = %20
  %65 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %66 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %42
  %68 = load %struct.net*, %struct.net** %5, align 8
  %69 = getelementptr inbounds %struct.net, %struct.net* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = icmp ne %struct.sock* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store %struct.fastopen_queue* %78, %struct.fastopen_queue** %11, align 8
  %79 = load %struct.fastopen_queue*, %struct.fastopen_queue** %11, align 8
  %80 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.net*, %struct.net** %5, align 8
  %83 = getelementptr inbounds %struct.net, %struct.net* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = call i32 @lockdep_is_held(i32* %84)
  %86 = call %struct.tcp_fastopen_context* @rcu_dereference_protected(i32 %81, i32 %85)
  store %struct.tcp_fastopen_context* %86, %struct.tcp_fastopen_context** %10, align 8
  %87 = load %struct.fastopen_queue*, %struct.fastopen_queue** %11, align 8
  %88 = getelementptr inbounds %struct.fastopen_queue, %struct.fastopen_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %91 = call i32 @rcu_assign_pointer(i32 %89, %struct.tcp_fastopen_context* %90)
  br label %108

92:                                               ; preds = %67
  %93 = load %struct.net*, %struct.net** %5, align 8
  %94 = getelementptr inbounds %struct.net, %struct.net* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.net*, %struct.net** %5, align 8
  %98 = getelementptr inbounds %struct.net, %struct.net* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i32 @lockdep_is_held(i32* %99)
  %101 = call %struct.tcp_fastopen_context* @rcu_dereference_protected(i32 %96, i32 %100)
  store %struct.tcp_fastopen_context* %101, %struct.tcp_fastopen_context** %10, align 8
  %102 = load %struct.net*, %struct.net** %5, align 8
  %103 = getelementptr inbounds %struct.net, %struct.net* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %9, align 8
  %107 = call i32 @rcu_assign_pointer(i32 %105, %struct.tcp_fastopen_context* %106)
  br label %108

108:                                              ; preds = %92, %74
  %109 = load %struct.net*, %struct.net** %5, align 8
  %110 = getelementptr inbounds %struct.net, %struct.net* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %10, align 8
  %114 = icmp ne %struct.tcp_fastopen_context* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %10, align 8
  %117 = getelementptr inbounds %struct.tcp_fastopen_context, %struct.tcp_fastopen_context* %116, i32 0, i32 1
  %118 = load i32, i32* @tcp_fastopen_ctx_free, align 4
  %119 = call i32 @call_rcu(i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %17
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local %struct.tcp_fastopen_context* @kmalloc(i32, i32) #1

declare dso_local i8* @get_unaligned_le64(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_fastopen_context* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tcp_fastopen_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
