; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_autobind.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.net = type { i32 }
%struct.unix_sock = type { i32, i32 }
%struct.unix_address = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@unix_autobind.ordernum = internal global i32 1, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%05x\00", align 1
@unix_table_lock = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@unix_socket_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @unix_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_autobind(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.unix_sock*, align 8
  %7 = alloca %struct.unix_address*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.net* @sock_net(%struct.sock* %13)
  store %struct.net* %14, %struct.net** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.unix_sock* @unix_sk(%struct.sock* %15)
  store %struct.unix_sock* %16, %struct.unix_sock** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %18 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock_interruptible(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %128

24:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %25 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %26 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %123

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.unix_address* @kzalloc(i32 50, i32 %33)
  store %struct.unix_address* %34, %struct.unix_address** %7, align 8
  %35 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %36 = icmp ne %struct.unix_address* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %123

38:                                               ; preds = %30
  %39 = load i32, i32* @AF_UNIX, align 4
  %40 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %41 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 8
  %44 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %45 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %44, i32 0, i32 3
  %46 = call i32 @refcount_set(i32* %45, i32 1)
  br label %47

47:                                               ; preds = %100, %38
  %48 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %49 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32, i32* @unix_autobind.ordernum, align 4
  %55 = call i64 @sprintf(i64 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = add nsw i64 %55, 1
  %57 = add i64 %56, 2
  %58 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %59 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %61 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %64 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @csum_partial(%struct.TYPE_3__* %62, i64 %65, i32 0)
  %67 = call i64 @unix_hash_fold(i32 %66)
  %68 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %69 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = call i32 @spin_lock(i32* @unix_table_lock)
  %71 = load i32, i32* @unix_autobind.ordernum, align 4
  %72 = add nsw i32 %71, 1
  %73 = and i32 %72, 1048575
  store i32 %73, i32* @unix_autobind.ordernum, align 4
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %76 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %79 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.socket*, %struct.socket** %3, align 8
  %82 = getelementptr inbounds %struct.socket, %struct.socket* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %85 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @__unix_find_socket_byname(%struct.net* %74, %struct.TYPE_3__* %77, i64 %80, i32 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %47
  %90 = call i32 @spin_unlock(i32* @unix_table_lock)
  %91 = call i32 (...) @cond_resched()
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = icmp eq i32 %92, 1048575
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOSPC, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %99 = call i32 @kfree(%struct.unix_address* %98)
  br label %123

100:                                              ; preds = %89
  br label %47

101:                                              ; preds = %47
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %106 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = xor i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = call i32 @__unix_remove_socket(%struct.sock* %109)
  %111 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %112 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %111, i32 0, i32 1
  %113 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %114 = call i32 @smp_store_release(i32* %112, %struct.unix_address* %113)
  %115 = load i32*, i32** @unix_socket_table, align 8
  %116 = load %struct.unix_address*, %struct.unix_address** %7, align 8
  %117 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.sock*, %struct.sock** %4, align 8
  %121 = call i32 @__unix_insert_socket(i32* %119, %struct.sock* %120)
  %122 = call i32 @spin_unlock(i32* @unix_table_lock)
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %101, %95, %37, %29
  %124 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %125 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.unix_address* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i64 @sprintf(i64, i8*, i32) #1

declare dso_local i64 @unix_hash_fold(i32) #1

declare dso_local i32 @csum_partial(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__unix_find_socket_byname(%struct.net*, %struct.TYPE_3__*, i64, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree(%struct.unix_address*) #1

declare dso_local i32 @__unix_remove_socket(%struct.sock*) #1

declare dso_local i32 @smp_store_release(i32*, %struct.unix_address*) #1

declare dso_local i32 @__unix_insert_socket(i32*, %struct.sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
