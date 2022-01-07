; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_update_local_domain.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_update_local_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_monitor = type { i64, i32, %struct.tipc_mon_domain, %struct.tipc_peer* }
%struct.tipc_mon_domain = type { i64, i64, i64, i64*, i64 }
%struct.tipc_peer = type { i64, i32, i64, %struct.tipc_mon_domain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_monitor*)* @mon_update_local_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_update_local_domain(%struct.tipc_monitor* %0) #0 {
  %2 = alloca %struct.tipc_monitor*, align 8
  %3 = alloca %struct.tipc_peer*, align 8
  %4 = alloca %struct.tipc_mon_domain*, align 8
  %5 = alloca %struct.tipc_mon_domain*, align 8
  %6 = alloca %struct.tipc_peer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tipc_monitor* %0, %struct.tipc_monitor** %2, align 8
  %11 = load %struct.tipc_monitor*, %struct.tipc_monitor** %2, align 8
  %12 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %11, i32 0, i32 3
  %13 = load %struct.tipc_peer*, %struct.tipc_peer** %12, align 8
  store %struct.tipc_peer* %13, %struct.tipc_peer** %3, align 8
  %14 = load %struct.tipc_monitor*, %struct.tipc_monitor** %2, align 8
  %15 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %14, i32 0, i32 2
  store %struct.tipc_mon_domain* %15, %struct.tipc_mon_domain** %4, align 8
  %16 = load %struct.tipc_peer*, %struct.tipc_peer** %3, align 8
  %17 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %16, i32 0, i32 3
  %18 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %17, align 8
  store %struct.tipc_mon_domain* %18, %struct.tipc_mon_domain** %5, align 8
  %19 = load %struct.tipc_peer*, %struct.tipc_peer** %3, align 8
  store %struct.tipc_peer* %19, %struct.tipc_peer** %6, align 8
  %20 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.tipc_monitor*, %struct.tipc_monitor** %2, align 8
  %24 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @dom_size(i32 %25)
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.tipc_peer*, %struct.tipc_peer** %3, align 8
  %30 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @dom_rec_len(%struct.tipc_mon_domain* %31, i64 %32)
  %34 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %35 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %44 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %89, %1
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %51 = call %struct.tipc_peer* @peer_nxt(%struct.tipc_peer* %50)
  store %struct.tipc_peer* %51, %struct.tipc_peer** %6, align 8
  %52 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %53 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %52, i32 0, i32 3
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %59 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %66 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %69 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  %73 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %74 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %73, i32 0, i32 0
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %77 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @map_set(i64* %74, i64 %75, i32 %78)
  %80 = load %struct.tipc_peer*, %struct.tipc_peer** %6, align 8
  %81 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @htonl(i64 %82)
  %84 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %4, align 8
  %85 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %83, i64* %88, align 8
  br label %89

89:                                               ; preds = %49
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %45

92:                                               ; preds = %45
  %93 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %94 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %92
  br label %139

104:                                              ; preds = %92
  %105 = load %struct.tipc_monitor*, %struct.tipc_monitor** %2, align 8
  %106 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %110 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %112 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @htons(i64 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %4, align 8
  %117 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %119 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @htons(i64 %120)
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %4, align 8
  %124 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i8* @htons(i64 %125)
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %4, align 8
  %129 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %5, align 8
  %131 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @cpu_to_be64(i64 %132)
  %134 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %4, align 8
  %135 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.tipc_monitor*, %struct.tipc_monitor** %2, align 8
  %137 = load %struct.tipc_peer*, %struct.tipc_peer** %3, align 8
  %138 = call i32 @mon_apply_domain(%struct.tipc_monitor* %136, %struct.tipc_peer* %137)
  br label %139

139:                                              ; preds = %104, %103
  ret void
}

declare dso_local i64 @dom_size(i32) #1

declare dso_local i64 @dom_rec_len(%struct.tipc_mon_domain*, i64) #1

declare dso_local %struct.tipc_peer* @peer_nxt(%struct.tipc_peer*) #1

declare dso_local i32 @map_set(i64*, i64, i32) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @cpu_to_be64(i64) #1

declare dso_local i32 @mon_apply_domain(%struct.tipc_monitor*, %struct.tipc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
