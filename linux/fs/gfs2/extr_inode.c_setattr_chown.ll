; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_setattr_chown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_setattr_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.iattr = type { i32, i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i64 }

@ATTR_UID = common dso_local global i32 0, align 4
@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iattr*)* @setattr_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setattr_chown(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_alloc_parms, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.iattr*, %struct.iattr** %4, align 8
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.iattr*, %struct.iattr** %4, align 8
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATTR_UID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @uid_eq(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %2
  %41 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  store i32 %41, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = load %struct.iattr*, %struct.iattr** %4, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATTR_GID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @gid_eq(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %42
  %55 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  store i32 %55, i32* %10, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %58 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %148

62:                                               ; preds = %56
  %63 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %64 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %148

68:                                               ; preds = %62
  %69 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @gfs2_quota_lock(%struct.gfs2_inode* %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %148

76:                                               ; preds = %68
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 0
  %79 = call i64 @gfs2_get_inode_blocks(i32* %78)
  %80 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %83 = call i64 @uid_eq(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %88 = call i64 @gid_eq(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85, %76
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @gfs2_quota_check(%struct.gfs2_inode* %91, i32 %92, i32 %93, %struct.gfs2_alloc_parms* %12)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %145

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %101 = load i64, i64* @RES_DINODE, align 8
  %102 = load i32, i32* @RES_QUOTA, align 4
  %103 = mul nsw i32 2, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %100, i64 %105, i32 0)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %145

110:                                              ; preds = %99
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  %112 = load %struct.iattr*, %struct.iattr** %4, align 8
  %113 = call i32 @gfs2_setattr_simple(%struct.inode* %111, %struct.iattr* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %142

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %120 = call i64 @uid_eq(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %125 = call i64 @gid_eq(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %129 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 0, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %128, i64 %131, i32 %132, i32 %133)
  %135 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %136 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %135, i64 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %127, %122
  br label %142

142:                                              ; preds = %141, %116
  %143 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %144 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %143)
  br label %145

145:                                              ; preds = %142, %109, %97
  %146 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %147 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %146)
  br label %148

148:                                              ; preds = %145, %75, %67, %61
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i64 @gfs2_get_inode_blocks(i32*) #1

declare dso_local i32 @gfs2_quota_check(%struct.gfs2_inode*, i32, i32, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_setattr_simple(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_quota_change(%struct.gfs2_inode*, i64, i32, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
