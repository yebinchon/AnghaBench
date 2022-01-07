; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_pick_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_pick_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.inode*, i64, %struct.saved*, %struct.TYPE_2__, i32 }
%struct.saved = type { i32, i32, %struct.path }
%struct.path = type { i64 }
%struct.TYPE_2__ = type { i64, i32* }
%struct.inode = type { i32 }

@MAXSYMLINKS = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.path*, %struct.inode*, i32)* @pick_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_link(%struct.nameidata* %0, %struct.path* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.saved*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = load i64, i64* @MAXSYMLINKS, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.path*, %struct.path** %7, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %25 = call i32 @path_to_nameidata(%struct.path* %23, %struct.nameidata* %24)
  %26 = load i32, i32* @ELOOP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %130

28:                                               ; preds = %4
  %29 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LOOKUP_RCU, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %28
  %36 = load %struct.path*, %struct.path** %7, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.path*, %struct.path** %7, align 8
  %46 = getelementptr inbounds %struct.path, %struct.path* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mntget(i64 %47)
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %52 = call i32 @nd_alloc_stack(%struct.nameidata* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %107

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @ECHILD, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %56
  %62 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %63 = load %struct.path*, %struct.path** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @legitimize_path(%struct.nameidata* %62, %struct.path* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %61
  %72 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %73 = call i32 @drop_links(%struct.nameidata* %72)
  %74 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %75 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @LOOKUP_RCU, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %86 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = call i32 (...) @rcu_read_unlock()
  br label %98

89:                                               ; preds = %61
  %90 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %91 = call i32 @unlazy_walk(%struct.nameidata* %90)
  %92 = call i64 @likely(i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %96 = call i32 @nd_alloc_stack(%struct.nameidata* %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %71
  br label %99

99:                                               ; preds = %98, %56
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.path*, %struct.path** %7, align 8
  %104 = call i32 @path_put(%struct.path* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %130

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %50
  %108 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %109 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %108, i32 0, i32 3
  %110 = load %struct.saved*, %struct.saved** %109, align 8
  %111 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %112 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = getelementptr inbounds %struct.saved, %struct.saved* %110, i64 %113
  store %struct.saved* %115, %struct.saved** %11, align 8
  %116 = load %struct.saved*, %struct.saved** %11, align 8
  %117 = getelementptr inbounds %struct.saved, %struct.saved* %116, i32 0, i32 2
  %118 = load %struct.path*, %struct.path** %7, align 8
  %119 = bitcast %struct.path* %117 to i8*
  %120 = bitcast %struct.path* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 8, i1 false)
  %121 = load %struct.saved*, %struct.saved** %11, align 8
  %122 = getelementptr inbounds %struct.saved, %struct.saved* %121, i32 0, i32 1
  %123 = call i32 @clear_delayed_call(i32* %122)
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %126 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %125, i32 0, i32 1
  store %struct.inode* %124, %struct.inode** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.saved*, %struct.saved** %11, align 8
  %129 = getelementptr inbounds %struct.saved, %struct.saved* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 1, i32* %5, align 4
  br label %130

130:                                              ; preds = %107, %102, %22
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @mntget(i64) #1

declare dso_local i32 @nd_alloc_stack(%struct.nameidata*) #1

declare dso_local i32 @legitimize_path(%struct.nameidata*, %struct.path*, i32) #1

declare dso_local i32 @drop_links(%struct.nameidata*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @unlazy_walk(%struct.nameidata*) #1

declare dso_local i32 @path_put(%struct.path*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_delayed_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
