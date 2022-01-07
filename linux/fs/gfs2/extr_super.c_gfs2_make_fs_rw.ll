; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_make_fs_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_make_fs_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32*, i32*, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.gfs2_glock*, i32)* }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_log_header_host = type { i32, i32, i64 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@DIO_METADATA = common dso_local global i32 0, align 4
@GFS2_LOG_HEAD_UNMOUNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SDF_JOURNAL_LIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_make_fs_rw(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca %struct.gfs2_holder, align 4
  %7 = alloca %struct.gfs2_log_header_host, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %4, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %16, align 8
  store %struct.gfs2_glock* %17, %struct.gfs2_glock** %5, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %19 = call i32 @init_threads(%struct.gfs2_sbd* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %113

24:                                               ; preds = %1
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LM_ST_SHARED, align 4
  %29 = call i32 @gfs2_glock_nq_init(i32 %27, i32 %28, i32 0, %struct.gfs2_holder* %6)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %87

33:                                               ; preds = %24
  %34 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.gfs2_glock*, i32)*, i32 (%struct.gfs2_glock*, i32)** %37, align 8
  %39 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %40 = load i32, i32* @DIO_METADATA, align 4
  %41 = call i32 %38(%struct.gfs2_glock* %39, i32 %40)
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @gfs2_find_jhead(%struct.TYPE_4__* %44, %struct.gfs2_log_header_host* %7, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %81

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFS2_LOG_HEAD_UNMOUNT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %57 = call i32 @gfs2_consist(%struct.gfs2_sbd* %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %81

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @gfs2_log_pointers_init(%struct.gfs2_sbd* %66, i32 %68)
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %71 = call i32 @gfs2_quota_init(%struct.gfs2_sbd* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %81

75:                                               ; preds = %60
  %76 = load i32, i32* @SDF_JOURNAL_LIVE, align 4
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %78 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %77, i32 0, i32 2
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  store i32 0, i32* %2, align 4
  br label %113

81:                                               ; preds = %74, %55, %48
  %82 = load i32, i32* @GL_NOCACHE, align 4
  %83 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %6)
  br label %87

87:                                               ; preds = %81, %32
  %88 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %89 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %94 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kthread_stop(i32* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %99 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %101 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %106 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @kthread_stop(i32* %107)
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %111 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %75, %22
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @init_threads(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_find_jhead(%struct.TYPE_4__*, %struct.gfs2_log_header_host*, i32) #1

declare dso_local i32 @gfs2_consist(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_log_pointers_init(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_quota_init(%struct.gfs2_sbd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
