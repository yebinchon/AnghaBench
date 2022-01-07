; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_clone.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock*, %struct.TYPE_5__*, i32 }
%struct.sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENFILE = common dso_local global i32 0, align 4
@PF_KCM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@kcm_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.socket*)* @kcm_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @kcm_clone(%struct.socket* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = call %struct.socket* (...) @sock_alloc()
  store %struct.socket* %6, %struct.socket** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = icmp ne %struct.socket* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENFILE, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.file* @ERR_PTR(i32 %11)
  store %struct.file* %12, %struct.file** %2, align 8
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__module_get(i32 %28)
  %30 = load %struct.socket*, %struct.socket** %3, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load %struct.sock*, %struct.sock** %31, align 8
  %33 = call i32 @sock_net(%struct.sock* %32)
  %34 = load i32, i32* @PF_KCM, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sock* @sk_alloc(i32 %33, i32 %34, i32 %35, i32* @kcm_proto, i32 0)
  store %struct.sock* %36, %struct.sock** %5, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = icmp ne %struct.sock* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %13
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = call i32 @sock_release(%struct.socket* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.file* @ERR_PTR(i32 %43)
  store %struct.file* %44, %struct.file** %2, align 8
  br label %67

45:                                               ; preds = %13
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 @sock_init_data(%struct.socket* %46, %struct.sock* %47)
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = call %struct.TYPE_7__* @kcm_sk(%struct.sock* %49)
  %51 = load %struct.socket*, %struct.socket** %3, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load %struct.sock*, %struct.sock** %52, align 8
  %54 = call %struct.TYPE_7__* @kcm_sk(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @init_kcm_sock(%struct.TYPE_7__* %50, i32 %56)
  %58 = load %struct.socket*, %struct.socket** %4, align 8
  %59 = load %struct.socket*, %struct.socket** %3, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load %struct.sock*, %struct.sock** %60, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.file* @sock_alloc_file(%struct.socket* %58, i32 0, i32 %65)
  store %struct.file* %66, %struct.file** %2, align 8
  br label %67

67:                                               ; preds = %45, %39, %9
  %68 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %68
}

declare dso_local %struct.socket* @sock_alloc(...) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @init_kcm_sock(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @kcm_sk(%struct.sock*) #1

declare dso_local %struct.file* @sock_alloc_file(%struct.socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
