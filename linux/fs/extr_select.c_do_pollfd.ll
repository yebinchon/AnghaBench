; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_select.c_do_pollfd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_select.c_do_pollfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fd = type { i32 }

@EPOLLNVAL = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, %struct.TYPE_4__*, i32*, i32)* @do_pollfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pollfd(%struct.pollfd* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fd, align 4
  %13 = alloca %struct.fd, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %62

20:                                               ; preds = %4
  %21 = load i32, i32* @EPOLLNVAL, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @fdget(i32 %22)
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.fd* %12 to i8*
  %26 = bitcast %struct.fd* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @demangle_poll(i32 %34)
  %36 = load i32, i32* @EPOLLERR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EPOLLHUP, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = call i32 @vfs_poll(i32 %46, %struct.TYPE_4__* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %31
  %54 = load i32*, i32** %7, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %31
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fdput(i32 %60)
  br label %62

62:                                               ; preds = %55, %30, %19
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @mangle_poll(i32 %63)
  %65 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @demangle_poll(i32) #1

declare dso_local i32 @vfs_poll(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fdput(i32) #1

declare dso_local i32 @mangle_poll(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
