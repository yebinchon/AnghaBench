; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_attach_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_attach_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.kcm_attach = type { i32, i32 }
%struct.bpf_prog = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.kcm_attach*)* @kcm_attach_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcm_attach_ioctl(%struct.socket* %0, %struct.kcm_attach* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.kcm_attach*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.kcm_attach* %1, %struct.kcm_attach** %5, align 8
  %9 = load %struct.kcm_attach*, %struct.kcm_attach** %5, align 8
  %10 = getelementptr inbounds %struct.kcm_attach, %struct.kcm_attach* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.socket* @sockfd_lookup(i32 %11, i32* %8)
  store %struct.socket* %12, %struct.socket** %6, align 8
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = icmp ne %struct.socket* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.kcm_attach*, %struct.kcm_attach** %5, align 8
  %20 = getelementptr inbounds %struct.kcm_attach, %struct.kcm_attach* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BPF_PROG_TYPE_SOCKET_FILTER, align 4
  %23 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %21, i32 %22)
  store %struct.bpf_prog* %23, %struct.bpf_prog** %7, align 8
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %25 = call i64 @IS_ERR(%struct.bpf_prog* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.bpf_prog* %28)
  store i32 %29, i32* %8, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = load %struct.socket*, %struct.socket** %6, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %34 = call i32 @kcm_attach(%struct.socket* %31, %struct.socket* %32, %struct.bpf_prog* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %39 = call i32 @bpf_prog_put(%struct.bpf_prog* %38)
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

41:                                               ; preds = %37, %27
  %42 = load %struct.socket*, %struct.socket** %6, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fput(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %40, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @kcm_attach(%struct.socket*, %struct.socket*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
