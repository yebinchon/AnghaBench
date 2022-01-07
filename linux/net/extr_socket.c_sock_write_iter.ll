; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32, %struct.socket* }
%struct.socket = type { i64 }
%struct.iov_iter = type { i32 }
%struct.msghdr = type { %struct.iov_iter, i32, %struct.kiocb* }

@ESPIPE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @sock_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 1
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  %17 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %18 = bitcast %struct.iov_iter* %16 to i8*
  %19 = bitcast %struct.iov_iter* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  %22 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  store %struct.kiocb* %22, %struct.kiocb** %21, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ESPIPE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %2
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.socket*, %struct.socket** %7, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SOCK_SEQPACKET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_EOR, align 4
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.socket*, %struct.socket** %7, align 8
  %53 = call i32 @sock_sendmsg(%struct.socket* %52, %struct.msghdr* %8)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  %56 = bitcast %struct.iov_iter* %54 to i8*
  %57 = bitcast %struct.iov_iter* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 8 %57, i64 4, i1 false)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sock_sendmsg(%struct.socket*, %struct.msghdr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
