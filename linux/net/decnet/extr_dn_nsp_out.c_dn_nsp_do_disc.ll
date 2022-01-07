; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_do_disc.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_do_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.sk_buff = type { i32 }

@NSP_DISCINIT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [81 x i8] c"DECnet: dn_nsp_do_disc: BUG! Please report this to SteveW@ACM.org rem=%u dst=%p\0A\00", align 1
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i8, i16, i32, %struct.dst_entry*, i32, i8*, i64, i64)* @dn_nsp_do_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_do_disc(%struct.sock* %0, i8 zeroext %1, i16 zeroext %2, i32 %3, %struct.dst_entry* %4, i32 %5, i8* %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %10, align 8
  store i8 %1, i8* %11, align 1
  store i16 %2, i16* %12, align 2
  store i32 %3, i32* %13, align 4
  store %struct.dst_entry* %4, %struct.dst_entry** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  %22 = load i32, i32* %15, align 4
  %23 = add nsw i32 7, %22
  %24 = load i8, i8* %11, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @NSP_DISCINIT, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = add nsw i32 %23, %30
  store i32 %31, i32* %20, align 4
  %32 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %33 = icmp eq %struct.dst_entry* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %9
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34, %9
  %38 = load i64, i64* %17, align 8
  %39 = call i32 @le16_to_cpu(i64 %38)
  %40 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %41 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.dst_entry* %40)
  br label %100

42:                                               ; preds = %34
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %43, i32 %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %19, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %100

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %51 = load i32, i32* %20, align 4
  %52 = call i8* @skb_put(%struct.sk_buff* %50, i32 %51)
  store i8* %52, i8** %21, align 8
  %53 = load i8, i8* %11, align 1
  %54 = load i8*, i8** %21, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %21, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i64, i64* %17, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = bitcast i8* %57 to i64*
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8* %60, i8** %21, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load i8*, i8** %21, align 8
  %63 = bitcast i8* %62 to i64*
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %21, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %21, align 8
  %66 = load i16, i16* %12, align 2
  %67 = call i64 @cpu_to_le16(i16 zeroext %66)
  %68 = load i8*, i8** %21, align 8
  %69 = bitcast i8* %68 to i64*
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %21, align 8
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @NSP_DISCINIT, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %49
  %78 = load i32, i32* %15, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %21, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %21, align 8
  store i8 %79, i8* %80, align 1
  br label %82

82:                                               ; preds = %77, %49
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i8*, i8** %21, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @memcpy(i8* %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %92 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %93 = call i32 @dst_clone(%struct.dst_entry* %92)
  %94 = call i32 @skb_dst_set(%struct.sk_buff* %91, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %99 = call i32 @dst_output(i32* @init_net, i32 %97, %struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %90, %48, %37
  ret void
}

declare dso_local i32 @net_dbg_ratelimited(i8*, i32, %struct.dst_entry*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i32, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(%struct.dst_entry*) #1

declare dso_local i32 @dst_output(i32*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
