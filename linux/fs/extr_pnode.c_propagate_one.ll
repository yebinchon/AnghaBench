; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_propagate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.mount = type { i32, i32, %struct.mount*, %struct.TYPE_4__, %struct.mount* }
%struct.TYPE_4__ = type { i32 }

@mp = common dso_local global %struct.TYPE_5__* null, align 8
@last_dest = common dso_local global %struct.mount* null, align 8
@CL_MAKE_SHARED = common dso_local global i32 0, align 4
@dest_master = common dso_local global %struct.mount* null, align 8
@last_source = common dso_local global %struct.mount* null, align 8
@first_source = common dso_local global %struct.mount* null, align 8
@CL_SLAVE = common dso_local global i32 0, align 4
@mount_lock = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @propagate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagate_one(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  %10 = load %struct.mount*, %struct.mount** %3, align 8
  %11 = call i64 @IS_MNT_NEW(%struct.mount* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %134

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mp, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mount*, %struct.mount** %3, align 8
  %19 = getelementptr inbounds %struct.mount, %struct.mount* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @is_subdir(i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %134

25:                                               ; preds = %14
  %26 = load %struct.mount*, %struct.mount** %3, align 8
  %27 = load %struct.mount*, %struct.mount** @last_dest, align 8
  %28 = call i64 @peers(%struct.mount* %26, %struct.mount* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CL_MAKE_SHARED, align 4
  store i32 %31, i32* %5, align 4
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.mount*, %struct.mount** %3, align 8
  store %struct.mount* %33, %struct.mount** %6, align 8
  br label %34

34:                                               ; preds = %47, %32
  %35 = load %struct.mount*, %struct.mount** %6, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 2
  %37 = load %struct.mount*, %struct.mount** %36, align 8
  store %struct.mount* %37, %struct.mount** %7, align 8
  %38 = load %struct.mount*, %struct.mount** %7, align 8
  %39 = load %struct.mount*, %struct.mount** @dest_master, align 8
  %40 = icmp eq %struct.mount* %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.mount*, %struct.mount** %7, align 8
  %43 = call i64 @IS_MNT_MARKED(%struct.mount* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %34
  br label %49

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.mount*, %struct.mount** %7, align 8
  store %struct.mount* %48, %struct.mount** %6, align 8
  br label %34

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %77, %49
  %51 = load %struct.mount*, %struct.mount** @last_source, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 4
  %53 = load %struct.mount*, %struct.mount** %52, align 8
  store %struct.mount* %53, %struct.mount** %9, align 8
  %54 = load %struct.mount*, %struct.mount** @last_source, align 8
  %55 = load %struct.mount*, %struct.mount** @first_source, align 8
  %56 = icmp eq %struct.mount* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %81

58:                                               ; preds = %50
  %59 = load %struct.mount*, %struct.mount** %9, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 2
  %61 = load %struct.mount*, %struct.mount** %60, align 8
  %62 = load %struct.mount*, %struct.mount** %7, align 8
  %63 = icmp eq %struct.mount* %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.mount*, %struct.mount** %6, align 8
  %69 = load %struct.mount*, %struct.mount** %9, align 8
  %70 = call i64 @peers(%struct.mount* %68, %struct.mount* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %81

73:                                               ; preds = %67, %58
  %74 = load %struct.mount*, %struct.mount** @last_source, align 8
  %75 = getelementptr inbounds %struct.mount, %struct.mount* %74, i32 0, i32 2
  %76 = load %struct.mount*, %struct.mount** %75, align 8
  store %struct.mount* %76, %struct.mount** @last_source, align 8
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %50, label %81

81:                                               ; preds = %77, %72, %57
  %82 = load i32, i32* @CL_SLAVE, align 4
  store i32 %82, i32* %5, align 4
  %83 = load %struct.mount*, %struct.mount** %3, align 8
  %84 = call i64 @IS_MNT_SHARED(%struct.mount* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @CL_MAKE_SHARED, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %30
  %92 = load %struct.mount*, %struct.mount** @last_source, align 8
  %93 = load %struct.mount*, %struct.mount** @last_source, align 8
  %94 = getelementptr inbounds %struct.mount, %struct.mount* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call %struct.mount* @copy_tree(%struct.mount* %92, i32 %96, i32 %97)
  store %struct.mount* %98, %struct.mount** %4, align 8
  %99 = load %struct.mount*, %struct.mount** %4, align 8
  %100 = call i64 @IS_ERR(%struct.mount* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.mount*, %struct.mount** %4, align 8
  %104 = call i32 @PTR_ERR(%struct.mount* %103)
  store i32 %104, i32* %2, align 4
  br label %134

105:                                              ; preds = %91
  %106 = load %struct.mount*, %struct.mount** %3, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mp, align 8
  %108 = load %struct.mount*, %struct.mount** %4, align 8
  %109 = call i32 @mnt_set_mountpoint(%struct.mount* %106, %struct.TYPE_5__* %107, %struct.mount* %108)
  %110 = load %struct.mount*, %struct.mount** %3, align 8
  store %struct.mount* %110, %struct.mount** @last_dest, align 8
  %111 = load %struct.mount*, %struct.mount** %4, align 8
  store %struct.mount* %111, %struct.mount** @last_source, align 8
  %112 = load %struct.mount*, %struct.mount** %3, align 8
  %113 = getelementptr inbounds %struct.mount, %struct.mount* %112, i32 0, i32 2
  %114 = load %struct.mount*, %struct.mount** %113, align 8
  %115 = load %struct.mount*, %struct.mount** @dest_master, align 8
  %116 = icmp ne %struct.mount* %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %105
  %118 = call i32 @read_seqlock_excl(i32* @mount_lock)
  %119 = load %struct.mount*, %struct.mount** %3, align 8
  %120 = getelementptr inbounds %struct.mount, %struct.mount* %119, i32 0, i32 2
  %121 = load %struct.mount*, %struct.mount** %120, align 8
  %122 = call i32 @SET_MNT_MARK(%struct.mount* %121)
  %123 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  br label %124

124:                                              ; preds = %117, %105
  %125 = load %struct.mount*, %struct.mount** %4, align 8
  %126 = getelementptr inbounds %struct.mount, %struct.mount* %125, i32 0, i32 1
  %127 = load i32, i32* @list, align 4
  %128 = call i32 @hlist_add_head(i32* %126, i32 %127)
  %129 = load %struct.mount*, %struct.mount** %3, align 8
  %130 = getelementptr inbounds %struct.mount, %struct.mount* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mount*, %struct.mount** %4, align 8
  %133 = call i32 @count_mounts(i32 %131, %struct.mount* %132)
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %124, %102, %24, %13
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @IS_MNT_NEW(%struct.mount*) #1

declare dso_local i32 @is_subdir(i32, i32) #1

declare dso_local i64 @peers(%struct.mount*, %struct.mount*) #1

declare dso_local i64 @IS_MNT_MARKED(%struct.mount*) #1

declare dso_local i64 @IS_MNT_SHARED(%struct.mount*) #1

declare dso_local %struct.mount* @copy_tree(%struct.mount*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mount*) #1

declare dso_local i32 @PTR_ERR(%struct.mount*) #1

declare dso_local i32 @mnt_set_mountpoint(%struct.mount*, %struct.TYPE_5__*, %struct.mount*) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local i32 @SET_MNT_MARK(%struct.mount*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @count_mounts(i32, %struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
