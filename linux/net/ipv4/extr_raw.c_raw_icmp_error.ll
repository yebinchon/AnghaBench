; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_icmp_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.sk_buff = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.net = type { i32 }

@RAW_HTABLE_SIZE = common dso_local global i32 0, align 4
@raw_v4_hashinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_icmp_error(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RAW_HTABLE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 1), align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call %struct.sock* @sk_head(i32* %21)
  store %struct.sock* %22, %struct.sock** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = icmp ne %struct.sock* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @inet_sdif(%struct.sk_buff* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.iphdr*
  store %struct.iphdr* %36, %struct.iphdr** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call %struct.net* @dev_net(%struct.TYPE_4__* %39)
  store %struct.net* %40, %struct.net** %10, align 8
  br label %41

41:                                               ; preds = %55, %25
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.sock* @__raw_v4_lookup(%struct.net* %42, %struct.sock* %43, i32 %44, i32 %47, i32 %50, i32 %51, i32 %52)
  store %struct.sock* %53, %struct.sock** %8, align 8
  %54 = icmp ne %struct.sock* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load %struct.sock*, %struct.sock** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @raw_err(%struct.sock* %56, %struct.sk_buff* %57, i32 %58)
  %60 = load %struct.sock*, %struct.sock** %8, align 8
  %61 = call %struct.sock* @sk_next(%struct.sock* %60)
  store %struct.sock* %61, %struct.sock** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.iphdr*
  store %struct.iphdr* %65, %struct.iphdr** %9, align 8
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %3
  %68 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @raw_v4_hashinfo, i32 0, i32 0))
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sock* @sk_head(i32*) #1

declare dso_local i32 @inet_sdif(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_4__*) #1

declare dso_local %struct.sock* @__raw_v4_lookup(%struct.net*, %struct.sock*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @raw_err(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @sk_next(%struct.sock*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
