; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_transfer = type { i32, i64*, i32, i32 }
%struct.snd_at73c213 = type { i64*, i64*, i32, i32 }
%struct.spi_message = type { i32 }

@__const.snd_at73c213_write_reg.msg_xfer = private unnamed_addr constant %struct.spi_transfer { i32 2, i64* null, i32 0, i32 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*, i64, i64)* @snd_at73c213_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_at73c213*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  %9 = alloca i32, align 4
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = bitcast %struct.spi_transfer* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.spi_transfer* @__const.snd_at73c213_write_reg.msg_xfer to i8*), i64 24, i1 false)
  %11 = call i32 @spi_message_init(%struct.spi_message* %7)
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %14 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %12, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %19 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 %17, i64* %21, align 8
  %22 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %23 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  store i64* %24, i64** %25, align 8
  %26 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %27 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %31 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %32 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @spi_sync(i32 %33, %struct.spi_message* %7)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.snd_at73c213*, %struct.snd_at73c213** %4, align 8
  %40 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %3
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
