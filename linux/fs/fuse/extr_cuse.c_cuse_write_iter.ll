; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_io_priv = type { i32 }

@FUSE_DIO_WRITE = common dso_local global i32 0, align 4
@FUSE_DIO_CUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @cuse_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.fuse_io_priv, align 4
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %7 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %8 = call i32 @FUSE_IO_PRIV_SYNC(%struct.kiocb* %7)
  %9 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %11 = load i32, i32* @FUSE_DIO_WRITE, align 4
  %12 = load i32, i32* @FUSE_DIO_CUSE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @fuse_direct_io(%struct.fuse_io_priv* %5, %struct.iov_iter* %10, i32* %6, i32 %13)
  ret i32 %14
}

declare dso_local i32 @FUSE_IO_PRIV_SYNC(%struct.kiocb*) #1

declare dso_local i32 @fuse_direct_io(%struct.fuse_io_priv*, %struct.iov_iter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
