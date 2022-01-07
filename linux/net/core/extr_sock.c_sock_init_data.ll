; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock*, i32, i32 }
%struct.sock = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i64, i32*, i32*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sysctl_rmem_default = common dso_local global i32 0, align 4
@sysctl_wmem_default = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@af_kern_callback_keys = common dso_local global i64 0, align 8
@af_family_kern_clock_key_strings = common dso_local global i32* null, align 8
@af_callback_keys = common dso_local global i64 0, align 8
@af_family_clock_key_strings = common dso_local global i32* null, align 8
@sock_def_wakeup = common dso_local global i32 0, align 4
@sock_def_readable = common dso_local global i32 0, align 4
@sock_def_write_space = common dso_local global i32 0, align 4
@sock_def_error_report = common dso_local global i32 0, align 4
@sock_def_destruct = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i8* null, align 8
@SK_DEFAULT_STAMP = common dso_local global i32 0, align 4
@sysctl_net_busy_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_init_data(%struct.socket* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %4, align 8
  %6 = call i32 @sk_init_common(%struct.sock* %5)
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 35
  store i32* null, i32** %8, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 34
  %11 = call i32 @timer_setup(i32* %10, i32* null, i32 0)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 33
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @sysctl_rmem_default, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 32
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @sysctl_wmem_default, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 31
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @TCP_CLOSE, align 4
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 30
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = load %struct.socket*, %struct.socket** %3, align 8
  %26 = call i32 @sk_set_socket(%struct.sock* %24, %struct.socket* %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load i32, i32* @SOCK_ZAPPED, align 4
  %29 = call i32 @sock_set_flag(%struct.sock* %27, i32 %28)
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = icmp ne %struct.socket* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %2
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 29
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 28
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.socket*, %struct.socket** %3, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = call i32 @RCU_INIT_POINTER(i32 %40, i32* %42)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  store %struct.sock* %44, %struct.sock** %46, align 8
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  %48 = call %struct.TYPE_6__* @SOCK_INODE(%struct.socket* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 27
  store i32 %50, i32* %52, align 8
  br label %65

53:                                               ; preds = %2
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 28
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RCU_INIT_POINTER(i32 %56, i32* null)
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call %struct.TYPE_5__* @sock_net(%struct.sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @make_kuid(i32 %61, i32 0)
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 27
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %32
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 25
  %68 = call i32 @rwlock_init(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 26
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %65
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 25
  %76 = load i64, i64* @af_kern_callback_keys, align 8
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = load i32*, i32** @af_family_kern_clock_key_strings, align 8
  %82 = load %struct.sock*, %struct.sock** %4, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lockdep_set_class_and_name(i32* %75, i64 %80, i32 %86)
  br label %103

88:                                               ; preds = %65
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 25
  %91 = load i64, i64* @af_callback_keys, align 8
  %92 = load %struct.sock*, %struct.sock** %4, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %91, %94
  %96 = load i32*, i32** @af_family_clock_key_strings, align 8
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lockdep_set_class_and_name(i32* %90, i64 %95, i32 %101)
  br label %103

103:                                              ; preds = %88, %73
  %104 = load i32, i32* @sock_def_wakeup, align 4
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 24
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @sock_def_readable, align 4
  %108 = load %struct.sock*, %struct.sock** %4, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 23
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @sock_def_write_space, align 4
  %111 = load %struct.sock*, %struct.sock** %4, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 22
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @sock_def_error_report, align 4
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = getelementptr inbounds %struct.sock, %struct.sock* %114, i32 0, i32 21
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @sock_def_destruct, align 4
  %117 = load %struct.sock*, %struct.sock** %4, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 20
  store i32 %116, i32* %118, align 8
  %119 = load %struct.sock*, %struct.sock** %4, align 8
  %120 = getelementptr inbounds %struct.sock, %struct.sock* %119, i32 0, i32 19
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load %struct.sock*, %struct.sock** %4, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 19
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = getelementptr inbounds %struct.sock, %struct.sock* %125, i32 0, i32 1
  store i32 -1, i32* %126, align 8
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = getelementptr inbounds %struct.sock, %struct.sock* %127, i32 0, i32 18
  store i32* null, i32** %128, align 8
  %129 = load %struct.sock*, %struct.sock** %4, align 8
  %130 = getelementptr inbounds %struct.sock, %struct.sock* %129, i32 0, i32 17
  store i32* null, i32** %130, align 8
  %131 = load %struct.sock*, %struct.sock** %4, align 8
  %132 = getelementptr inbounds %struct.sock, %struct.sock* %131, i32 0, i32 16
  store i64 0, i64* %132, align 8
  %133 = load %struct.sock*, %struct.sock** %4, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 2
  store i32 1, i32* %134, align 4
  %135 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %136 = load %struct.sock*, %struct.sock** %4, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 15
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %139 = load %struct.sock*, %struct.sock** %4, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 14
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @SK_DEFAULT_STAMP, align 4
  %142 = load %struct.sock*, %struct.sock** %4, align 8
  %143 = getelementptr inbounds %struct.sock, %struct.sock* %142, i32 0, i32 13
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sock*, %struct.sock** %4, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 11
  %146 = call i32 @atomic_set(i32* %145, i32 0)
  %147 = load %struct.sock*, %struct.sock** %4, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 3
  store i64 -1, i64* %148, align 8
  %149 = load %struct.sock*, %struct.sock** %4, align 8
  %150 = getelementptr inbounds %struct.sock, %struct.sock* %149, i32 0, i32 4
  store i64 -1, i64* %150, align 8
  %151 = load %struct.sock*, %struct.sock** %4, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 5
  store i32 10, i32* %152, align 8
  %153 = load %struct.sock*, %struct.sock** %4, align 8
  %154 = getelementptr inbounds %struct.sock, %struct.sock* %153, i32 0, i32 6
  store i32 -1, i32* %154, align 4
  %155 = load %struct.sock*, %struct.sock** %4, align 8
  %156 = call i32 @sk_rx_queue_clear(%struct.sock* %155)
  %157 = call i32 (...) @smp_wmb()
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 8
  %160 = call i32 @refcount_set(i32* %159, i32 1)
  %161 = load %struct.sock*, %struct.sock** %4, align 8
  %162 = getelementptr inbounds %struct.sock, %struct.sock* %161, i32 0, i32 7
  %163 = call i32 @atomic_set(i32* %162, i32 0)
  ret void
}

declare dso_local i32 @sk_init_common(%struct.sock*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @sk_set_socket(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local %struct.TYPE_5__* @sock_net(%struct.sock*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, i64, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sk_rx_queue_clear(%struct.sock*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
