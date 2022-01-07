; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___fanout_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c___fanout_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.packet_sock = type { %struct.packet_fanout* }
%struct.packet_fanout = type { i32, i32, i32, %struct.sock** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.packet_sock*)* @__fanout_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fanout_unlink(%struct.sock* %0, %struct.packet_sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.packet_sock*, align 8
  %5 = alloca %struct.packet_fanout*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.packet_sock* %1, %struct.packet_sock** %4, align 8
  %7 = load %struct.packet_sock*, %struct.packet_sock** %4, align 8
  %8 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %7, i32 0, i32 0
  %9 = load %struct.packet_fanout*, %struct.packet_fanout** %8, align 8
  store %struct.packet_fanout* %9, %struct.packet_fanout** %5, align 8
  %10 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %11 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %16 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %21 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %20, i32 0, i32 3
  %22 = load %struct.sock**, %struct.sock*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sock*, %struct.sock** %22, i64 %24
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = icmp eq %struct.sock* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %37 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %43 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %42, i32 0, i32 3
  %44 = load %struct.sock**, %struct.sock*** %43, align 8
  %45 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %46 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sock*, %struct.sock** %44, i64 %49
  %51 = load %struct.sock*, %struct.sock** %50, align 8
  %52 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %53 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %52, i32 0, i32 3
  %54 = load %struct.sock**, %struct.sock*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sock*, %struct.sock** %54, i64 %56
  store %struct.sock* %51, %struct.sock** %57, align 8
  %58 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %59 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %63 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %34
  %67 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %68 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %67, i32 0, i32 2
  %69 = call i32 @__dev_remove_pack(i32* %68)
  br label %70

70:                                               ; preds = %66, %34
  %71 = load %struct.packet_fanout*, %struct.packet_fanout** %5, align 8
  %72 = getelementptr inbounds %struct.packet_fanout, %struct.packet_fanout* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__dev_remove_pack(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
