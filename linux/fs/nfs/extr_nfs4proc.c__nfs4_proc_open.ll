; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_proc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i32, i32, i32, %struct.nfs_openres, %struct.nfs_openargs, i32 }
%struct.nfs_openres = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nfs_openargs = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }

@NFS4ERR_BADNAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_OPEN_RESULT_LOCKTYPE_POSIX = common dso_local global i32 0, align 4
@NFS_CAP_POSIX_LOCK = common dso_local global i32 0, align 4
@NFS4_OPEN_RESULT_CONFIRM = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_opendata*, %struct.nfs_open_context*)* @_nfs4_proc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_open(%struct.nfs4_opendata* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs4_opendata*, align 8
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs_openargs*, align 8
  %9 = alloca %struct.nfs_openres*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %4, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %5, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %15)
  store %struct.nfs_server* %16, %struct.nfs_server** %7, align 8
  %17 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %18 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %17, i32 0, i32 4
  store %struct.nfs_openargs* %18, %struct.nfs_openargs** %8, align 8
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %19, i32 0, i32 3
  store %struct.nfs_openres* %20, %struct.nfs_openres** %9, align 8
  %21 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %23 = call i32 @nfs4_run_open_task(%struct.nfs4_opendata* %21, %struct.nfs_open_context* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %25 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %162

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @NFS4ERR_BADNAME, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %40 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @O_CREAT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %162

48:                                               ; preds = %38, %33
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %162

50:                                               ; preds = %30
  %51 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %52 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %53 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %52, i32 0, i32 1
  %54 = call i32 @nfs_fattr_map_and_free_names(%struct.nfs_server* %51, i32* %53)
  %55 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %56 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @O_CREAT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %50
  %62 = load %struct.nfs_openargs*, %struct.nfs_openargs** %8, align 8
  %63 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @O_EXCL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %70 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %85

71:                                               ; preds = %61
  %72 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %73 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %77 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %83 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %87 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = call i64 @inode_peek_iversion_raw(%struct.inode* %91)
  %93 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %94 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %90, %85
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %101 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %100, i32 0, i32 5
  %102 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %103 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @update_changeattr(%struct.inode* %99, %struct.TYPE_3__* %101, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %98, %90
  br label %109

109:                                              ; preds = %108, %50
  %110 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %111 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NFS4_OPEN_RESULT_LOCKTYPE_POSIX, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* @NFS_CAP_POSIX_LOCK, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %120 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %125 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NFS4_OPEN_RESULT_CONFIRM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %4, align 8
  %132 = call i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %162

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %123
  %139 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %140 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %138
  %148 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %149 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %148, i32 0, i32 4
  %150 = call i32 @nfs4_sequence_free_slot(i32* %149)
  %151 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %152 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %153 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %152, i32 0, i32 3
  %154 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %155 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load %struct.nfs_openres*, %struct.nfs_openres** %9, align 8
  %158 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @nfs4_proc_getattr(%struct.nfs_server* %151, i32* %153, %struct.TYPE_4__* %156, i32 %159, i32* null)
  br label %161

161:                                              ; preds = %147, %138
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %135, %48, %45, %28
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs4_run_open_task(%struct.nfs4_opendata*, %struct.nfs_open_context*) #1

declare dso_local i32 @nfs_fattr_map_and_free_names(%struct.nfs_server*, i32*) #1

declare dso_local i64 @inode_peek_iversion_raw(%struct.inode*) #1

declare dso_local i32 @update_changeattr(%struct.inode*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @_nfs4_proc_open_confirm(%struct.nfs4_opendata*) #1

declare dso_local i32 @nfs4_sequence_free_slot(i32*) #1

declare dso_local i32 @nfs4_proc_getattr(%struct.nfs_server*, i32*, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
