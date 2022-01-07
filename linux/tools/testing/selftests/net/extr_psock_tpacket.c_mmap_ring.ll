; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_mmap_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_mmap_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ring*)* @mmap_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_ring(i32 %0, %struct.ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ring* %1, %struct.ring** %4, align 8
  %6 = load %struct.ring*, %struct.ring** %4, align 8
  %7 = getelementptr inbounds %struct.ring, %struct.ring* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PROT_READ, align 4
  %10 = load i32, i32* @PROT_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MAP_SHARED, align 4
  %13 = load i32, i32* @MAP_LOCKED, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_POPULATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @mmap(i32 0, i32 %8, i32 %11, i32 %16, i32 %17, i32 0)
  %19 = load %struct.ring*, %struct.ring** %4, align 8
  %20 = getelementptr inbounds %struct.ring, %struct.ring* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ring*, %struct.ring** %4, align 8
  %22 = getelementptr inbounds %struct.ring, %struct.ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAP_FAILED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %2
  %30 = load %struct.ring*, %struct.ring** %4, align 8
  %31 = getelementptr inbounds %struct.ring, %struct.ring* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.ring*, %struct.ring** %4, align 8
  %34 = getelementptr inbounds %struct.ring, %struct.ring* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memset(%struct.TYPE_2__* %32, i32 0, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %71, %29
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ring*, %struct.ring** %4, align 8
  %40 = getelementptr inbounds %struct.ring, %struct.ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %37
  %44 = load %struct.ring*, %struct.ring** %4, align 8
  %45 = getelementptr inbounds %struct.ring, %struct.ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ring*, %struct.ring** %4, align 8
  %49 = getelementptr inbounds %struct.ring, %struct.ring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %46, %52
  %54 = load %struct.ring*, %struct.ring** %4, align 8
  %55 = getelementptr inbounds %struct.ring, %struct.ring* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %53, i64* %60, align 8
  %61 = load %struct.ring*, %struct.ring** %4, align 8
  %62 = getelementptr inbounds %struct.ring, %struct.ring* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ring*, %struct.ring** %4, align 8
  %65 = getelementptr inbounds %struct.ring, %struct.ring* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 8
  br label %71

71:                                               ; preds = %43
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %37

74:                                               ; preds = %37
  ret void
}

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
