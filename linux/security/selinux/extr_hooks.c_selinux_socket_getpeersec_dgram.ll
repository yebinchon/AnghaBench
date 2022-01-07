; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_getpeersec_dgram.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_getpeersec_dgram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.inode_security_struct = type { i64 }

@SECSID_NULL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@PF_UNIX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sk_buff*, i64*)* @selinux_socket_getpeersec_dgram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_getpeersec_dgram(%struct.socket* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* @SECSID_NULL, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ETH_P_IP, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i64, i64* @PF_INET, align 8
  store i64 %22, i64* %9, align 8
  br label %47

23:                                               ; preds = %14, %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_IPV6, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @PF_INET6, align 8
  store i64 %34, i64* %9, align 8
  br label %46

35:                                               ; preds = %26, %23
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = icmp ne %struct.socket* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  br label %45

44:                                               ; preds = %35
  br label %70

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = icmp ne %struct.socket* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @PF_UNIX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = call i32 @SOCK_INODE(%struct.socket* %55)
  %57 = call %struct.inode_security_struct* @inode_security_novalidate(i32 %56)
  store %struct.inode_security_struct* %57, %struct.inode_security_struct** %10, align 8
  %58 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %59 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  br label %69

61:                                               ; preds = %50, %47
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @selinux_skb_peerlbl_sid(%struct.sk_buff* %65, i64 %66, i64* %8)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %44
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SECSID_NULL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.inode_security_struct* @inode_security_novalidate(i32) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @selinux_skb_peerlbl_sid(%struct.sk_buff*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
