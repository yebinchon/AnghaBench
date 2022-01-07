; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_attach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_prog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_prog = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BPF_PROG_ATTACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BPF_F_ATTACH_MASK = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCK = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCK_ADDR = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SOCK_OPS = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_DEVICE = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SYSCTL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SOCKOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_prog_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_prog_attach(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %7 = load i32, i32* @CAP_NET_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %107

13:                                               ; preds = %1
  %14 = load i32, i32* @BPF_PROG_ATTACH, align 4
  %15 = call i64 @CHECK_ATTR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %107

20:                                               ; preds = %13
  %21 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %22 = bitcast %union.bpf_attr* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BPF_F_ATTACH_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %107

31:                                               ; preds = %20
  %32 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %33 = bitcast %union.bpf_attr* %32 to i32*
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %53 [
    i32 145, label %35
    i32 146, label %35
    i32 144, label %37
    i32 150, label %37
    i32 147, label %37
    i32 152, label %39
    i32 149, label %39
    i32 151, label %39
    i32 148, label %39
    i32 139, label %39
    i32 137, label %39
    i32 140, label %39
    i32 138, label %39
    i32 142, label %41
    i32 154, label %43
    i32 130, label %45
    i32 129, label %46
    i32 128, label %46
    i32 135, label %47
    i32 136, label %48
    i32 141, label %49
    i32 153, label %51
    i32 143, label %51
  ]

35:                                               ; preds = %31, %31
  %36 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %31, %31, %31
  %38 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK, align 4
  store i32 %38, i32* %4, align 4
  br label %56

39:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31
  %40 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK_ADDR, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %31
  %42 = load i32, i32* @BPF_PROG_TYPE_SOCK_OPS, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %31
  %44 = load i32, i32* @BPF_PROG_TYPE_CGROUP_DEVICE, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %31
  store i32 132, i32* %4, align 4
  br label %56

46:                                               ; preds = %31, %31
  store i32 131, i32* %4, align 4
  br label %56

47:                                               ; preds = %31
  store i32 133, i32* %4, align 4
  br label %56

48:                                               ; preds = %31
  store i32 134, i32* %4, align 4
  br label %56

49:                                               ; preds = %31
  %50 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %31, %31
  %52 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCKOPT, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %31
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %107

56:                                               ; preds = %51, %49, %48, %47, %46, %45, %43, %41, %39, %37, %35
  %57 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %58 = bitcast %union.bpf_attr* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call %struct.bpf_prog* @bpf_prog_get_type(i32 %59, i32 %60)
  store %struct.bpf_prog* %61, %struct.bpf_prog** %5, align 8
  %62 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %63 = call i64 @IS_ERR(%struct.bpf_prog* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %67 = call i32 @PTR_ERR(%struct.bpf_prog* %66)
  store i32 %67, i32* %2, align 4
  br label %107

68:                                               ; preds = %56
  %69 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %70 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %71 = bitcast %union.bpf_attr* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @bpf_prog_attach_check_attach_type(%struct.bpf_prog* %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %77 = call i32 @bpf_prog_put(%struct.bpf_prog* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %107

80:                                               ; preds = %68
  %81 = load i32, i32* %4, align 4
  switch i32 %81, label %94 [
    i32 131, label %82
    i32 132, label %82
    i32 133, label %86
    i32 134, label %90
  ]

82:                                               ; preds = %80, %80
  %83 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %84 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %85 = call i32 @sock_map_get_from_fd(%union.bpf_attr* %83, %struct.bpf_prog* %84)
  store i32 %85, i32* %6, align 4
  br label %99

86:                                               ; preds = %80
  %87 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %88 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %89 = call i32 @lirc_prog_attach(%union.bpf_attr* %87, %struct.bpf_prog* %88)
  store i32 %89, i32* %6, align 4
  br label %99

90:                                               ; preds = %80
  %91 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %92 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %93 = call i32 @skb_flow_dissector_bpf_prog_attach(%union.bpf_attr* %91, %struct.bpf_prog* %92)
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %80
  %95 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %98 = call i32 @cgroup_bpf_prog_attach(%union.bpf_attr* %95, i32 %96, %struct.bpf_prog* %97)
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %90, %86, %82
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %104 = call i32 @bpf_prog_put(%struct.bpf_prog* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %75, %65, %53, %28, %17, %10
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @CHECK_ATTR(i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_get_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i64 @bpf_prog_attach_check_attach_type(%struct.bpf_prog*, i32) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @sock_map_get_from_fd(%union.bpf_attr*, %struct.bpf_prog*) #1

declare dso_local i32 @lirc_prog_attach(%union.bpf_attr*, %struct.bpf_prog*) #1

declare dso_local i32 @skb_flow_dissector_bpf_prog_attach(%union.bpf_attr*, %struct.bpf_prog*) #1

declare dso_local i32 @cgroup_bpf_prog_attach(%union.bpf_attr*, i32, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
