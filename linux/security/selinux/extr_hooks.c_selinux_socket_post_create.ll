; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_post_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_socket_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_security_struct* }
%struct.sk_security_struct = type { i64, i32, i8* }
%struct.task_security_struct = type { i32 }
%struct.inode_security_struct = type { i32, i8*, i8* }

@SECINITSID_KERNEL = common dso_local global i8* null, align 8
@LABEL_INITIALIZED = common dso_local global i32 0, align 4
@SECCLASS_SCTP_SOCKET = common dso_local global i64 0, align 8
@SCTP_ASSOC_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32, i32, i32)* @selinux_socket_post_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_post_create(%struct.socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_security_struct*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.sk_security_struct*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 (...) @current_cred()
  %19 = call %struct.task_security_struct* @selinux_cred(i32 %18)
  store %struct.task_security_struct* %19, %struct.task_security_struct** %12, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = call i32 @SOCK_INODE(%struct.socket* %20)
  %22 = call %struct.inode_security_struct* @inode_security_novalidate(i32 %21)
  store %struct.inode_security_struct* %22, %struct.inode_security_struct** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @socket_type_to_security_class(i32 %23, i32 %24, i32 %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** @SECINITSID_KERNEL, align 8
  store i8* %27, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %5
  %31 = load %struct.task_security_struct*, %struct.task_security_struct** %12, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @socket_sockcreate_sid(%struct.task_security_struct* %31, i8* %32, i8** %16)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %6, align 4
  br label %83

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %42 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %45 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @LABEL_INITIALIZED, align 4
  %47 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %48 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.socket*, %struct.socket** %7, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp ne %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %81

53:                                               ; preds = %39
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.sk_security_struct*, %struct.sk_security_struct** %57, align 8
  store %struct.sk_security_struct* %58, %struct.sk_security_struct** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %62 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %65 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %67 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SECCLASS_SCTP_SOCKET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load i32, i32* @SCTP_ASSOC_UNSET, align 4
  %73 = load %struct.sk_security_struct*, %struct.sk_security_struct** %14, align 8
  %74 = getelementptr inbounds %struct.sk_security_struct, %struct.sk_security_struct* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %53
  %76 = load %struct.socket*, %struct.socket** %7, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @selinux_netlbl_socket_post_create(%struct.TYPE_2__* %78, i32 %79)
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %75, %39
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %36
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.inode_security_struct* @inode_security_novalidate(i32) #1

declare dso_local i32 @SOCK_INODE(%struct.socket*) #1

declare dso_local i8* @socket_type_to_security_class(i32, i32, i32) #1

declare dso_local i32 @socket_sockcreate_sid(%struct.task_security_struct*, i8*, i8**) #1

declare dso_local i32 @selinux_netlbl_socket_post_create(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
