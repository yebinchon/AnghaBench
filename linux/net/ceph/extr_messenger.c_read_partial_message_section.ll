; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_message_section.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_read_partial_message_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i32 }
%struct.kvec = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*, %struct.kvec*, i32, i32*)* @read_partial_message_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_partial_message_section(%struct.ceph_connection* %0, %struct.kvec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_connection*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.kvec*, %struct.kvec** %7, align 8
  %13 = icmp ne %struct.kvec* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %53, %4
  %18 = load %struct.kvec*, %struct.kvec** %7, align 8
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.kvec*, %struct.kvec** %7, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.kvec*, %struct.kvec** %7, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ceph_connection*, %struct.ceph_connection** %6, align 8
  %36 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvec*, %struct.kvec** %7, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.kvec*, %struct.kvec** %7, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ceph_tcp_recvmsg(i32 %37, i8* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %75

53:                                               ; preds = %23
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.kvec*, %struct.kvec** %7, align 8
  %56 = getelementptr inbounds %struct.kvec, %struct.kvec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %17

59:                                               ; preds = %17
  %60 = load %struct.kvec*, %struct.kvec** %7, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.kvec*, %struct.kvec** %7, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.kvec*, %struct.kvec** %7, align 8
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @crc32c(i32 0, i32* %68, i32 %71)
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %59
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_tcp_recvmsg(i32, i8*, i32) #1

declare dso_local i32 @crc32c(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
