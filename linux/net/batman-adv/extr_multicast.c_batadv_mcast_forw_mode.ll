; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.ethhdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BATADV_FORW_NONE = common dso_local global i32 0, align 4
@BATADV_FORW_ALL = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_FORW_SINGLE = common dso_local global i32 0, align 4
@BATADV_FORW_SOME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_mcast_forw_mode(%struct.batadv_priv* %0, %struct.sk_buff* %1, %struct.batadv_orig_node** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.batadv_orig_node**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ethhdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.batadv_orig_node** %2, %struct.batadv_orig_node*** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @batadv_mcast_forw_mode_check(%struct.batadv_priv* %18, %struct.sk_buff* %19, i32* %13, i32* %16)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @BATADV_FORW_NONE, align 4
  store i32 %26, i32* %4, align 4
  br label %126

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @BATADV_FORW_ALL, align 4
  store i32 %31, i32* %4, align 4
  br label %126

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %34)
  store %struct.ethhdr* %35, %struct.ethhdr** %15, align 8
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %37 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %41 = call i32 @batadv_tt_global_hash_count(%struct.batadv_priv* %36, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %43 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %44 = call i32 @batadv_mcast_forw_want_all_ip_count(%struct.batadv_priv* %42, %struct.ethhdr* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  br label %53

48:                                               ; preds = %33
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %50 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i8* @atomic_read(i32* %51)
  br label %53

53:                                               ; preds = %48, %47
  %54 = phi i8* [ null, %47 ], [ %52, %48 ]
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @batadv_mcast_forw_rtr_count(%struct.batadv_priv* %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  switch i32 %66, label %110 [
    i32 1, label %67
    i32 0, label %108
  ]

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %72 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %73 = call %struct.batadv_orig_node* @batadv_mcast_forw_tt_node_get(%struct.batadv_priv* %71, %struct.ethhdr* %72)
  %74 = load %struct.batadv_orig_node**, %struct.batadv_orig_node*** %7, align 8
  store %struct.batadv_orig_node* %73, %struct.batadv_orig_node** %74, align 8
  br label %101

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %80 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %81 = call %struct.batadv_orig_node* @batadv_mcast_forw_ip_node_get(%struct.batadv_priv* %79, %struct.ethhdr* %80)
  %82 = load %struct.batadv_orig_node**, %struct.batadv_orig_node*** %7, align 8
  store %struct.batadv_orig_node* %81, %struct.batadv_orig_node** %82, align 8
  br label %100

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %88 = call %struct.batadv_orig_node* @batadv_mcast_forw_unsnoop_node_get(%struct.batadv_priv* %87)
  %89 = load %struct.batadv_orig_node**, %struct.batadv_orig_node*** %7, align 8
  store %struct.batadv_orig_node* %88, %struct.batadv_orig_node** %89, align 8
  br label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %95 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %96 = call %struct.batadv_orig_node* @batadv_mcast_forw_rtr_node_get(%struct.batadv_priv* %94, %struct.ethhdr* %95)
  %97 = load %struct.batadv_orig_node**, %struct.batadv_orig_node*** %7, align 8
  store %struct.batadv_orig_node* %96, %struct.batadv_orig_node** %97, align 8
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %86
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %70
  %102 = load %struct.batadv_orig_node**, %struct.batadv_orig_node*** %7, align 8
  %103 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %102, align 8
  %104 = icmp ne %struct.batadv_orig_node* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @BATADV_FORW_SINGLE, align 4
  store i32 %106, i32* %4, align 4
  br label %126

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %53, %107
  %109 = load i32, i32* @BATADV_FORW_NONE, align 4
  store i32 %109, i32* %4, align 4
  br label %126

110:                                              ; preds = %53
  %111 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %112 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %111, i32 0, i32 0
  %113 = call i8* @atomic_read(i32* %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ule i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @BATADV_FORW_SOME, align 4
  store i32 %122, i32* %4, align 4
  br label %126

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* @BATADV_FORW_ALL, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %121, %108, %105, %30, %25
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @batadv_mcast_forw_mode_check(%struct.batadv_priv*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @batadv_tt_global_hash_count(%struct.batadv_priv*, i32, i32) #1

declare dso_local i32 @batadv_mcast_forw_want_all_ip_count(%struct.batadv_priv*, %struct.ethhdr*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @batadv_mcast_forw_rtr_count(%struct.batadv_priv*, i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_tt_node_get(%struct.batadv_priv*, %struct.ethhdr*) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_ip_node_get(%struct.batadv_priv*, %struct.ethhdr*) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_unsnoop_node_get(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_rtr_node_get(%struct.batadv_priv*, %struct.ethhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
