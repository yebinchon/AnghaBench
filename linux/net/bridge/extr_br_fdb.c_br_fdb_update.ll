; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_br_fdb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32 }
%struct.net_bridge_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_bridge_fdb_entry = type { i32, i32, i64, i32, %struct.net_bridge_port*, i32 }

@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"received packet on %s with own address as source address (addr:%pM, vlan:%u)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@RTM_NEWNEIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_fdb_update(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_bridge_fdb_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %15 = call i64 @hold_time(%struct.net_bridge* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %158

18:                                               ; preds = %5
  %19 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %20 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BR_STATE_LEARNING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %158

31:                                               ; preds = %24, %18
  %32 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 1
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.net_bridge_fdb_entry* @fdb_find_rcu(i32* %33, i8* %34, i32 %35)
  store %struct.net_bridge_fdb_entry* %36, %struct.net_bridge_fdb_entry** %11, align 8
  %37 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %38 = call i64 @likely(%struct.net_bridge_fdb_entry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %125

40:                                               ; preds = %31
  %41 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %42 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = call i64 (...) @net_ratelimit()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %52 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @br_warn(%struct.net_bridge* %50, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %46
  br label %124

60:                                               ; preds = %40
  %61 = load i64, i64* @jiffies, align 8
  store i64 %61, i64* %13, align 8
  %62 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %63 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %64 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %63, i32 0, i32 4
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %64, align 8
  %66 = icmp ne %struct.net_bridge_port* %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %69 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %60
  %74 = phi i1 [ false, %60 ], [ %72, %67 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %80 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %81 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %80, i32 0, i32 4
  store %struct.net_bridge_port* %79, %struct.net_bridge_port** %81, align 8
  store i32 1, i32* %12, align 4
  %82 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %83 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %89 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %78
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %94 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %100 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %107 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %106, i32 0, i32 3
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %114 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @trace_br_fdb_update(%struct.net_bridge* %113, %struct.net_bridge_port* %114, i8* %115, i32 %116, i32 %117)
  %119 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %120 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %121 = load i32, i32* @RTM_NEWNEIGH, align 4
  %122 = call i32 @fdb_notify(%struct.net_bridge* %119, %struct.net_bridge_fdb_entry* %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %112, %108
  br label %124

124:                                              ; preds = %123, %59
  br label %158

125:                                              ; preds = %31
  %126 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %127 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %126, i32 0, i32 0
  %128 = call i32 @spin_lock(i32* %127)
  %129 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %130 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge* %129, %struct.net_bridge_port* %130, i8* %131, i32 %132, i32 0, i32 0)
  store %struct.net_bridge_fdb_entry* %133, %struct.net_bridge_fdb_entry** %11, align 8
  %134 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %135 = icmp ne %struct.net_bridge_fdb_entry* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %125
  %137 = load i32, i32* %10, align 4
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %142 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %141, i32 0, i32 3
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %136
  %144 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %145 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @trace_br_fdb_update(%struct.net_bridge* %144, %struct.net_bridge_port* %145, i8* %146, i32 %147, i32 %148)
  %150 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %151 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %11, align 8
  %152 = load i32, i32* @RTM_NEWNEIGH, align 4
  %153 = call i32 @fdb_notify(%struct.net_bridge* %150, %struct.net_bridge_fdb_entry* %151, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %143, %125
  %155 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %156 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock(i32* %156)
  br label %158

158:                                              ; preds = %17, %30, %154, %124
  ret void
}

declare dso_local i64 @hold_time(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_fdb_entry* @fdb_find_rcu(i32*, i8*, i32) #1

declare dso_local i64 @likely(%struct.net_bridge_fdb_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @br_warn(%struct.net_bridge*, i8*, i32, i8*, i32) #1

declare dso_local i32 @trace_br_fdb_update(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32) #1

declare dso_local i32 @fdb_notify(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
