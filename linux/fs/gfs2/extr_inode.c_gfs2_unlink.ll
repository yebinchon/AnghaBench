; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_LEAF = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @gfs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca [3 x %struct.gfs2_holder], align 4
  %11 = alloca %struct.gfs2_rgrpd*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %9, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %22 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %3, align 4
  br label %157

27:                                               ; preds = %2
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %34 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %35 = call i32 @gfs2_holder_init(i32 %32, i32 %33, i32 0, %struct.gfs2_holder* %34)
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %40 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %40, i64 1
  %42 = call i32 @gfs2_holder_init(i32 %38, i32 %39, i32 0, %struct.gfs2_holder* %41)
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %43, i32 %46, i32 1)
  store %struct.gfs2_rgrpd* %47, %struct.gfs2_rgrpd** %11, align 8
  %48 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %11, align 8
  %49 = icmp ne %struct.gfs2_rgrpd* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %27
  br label %150

51:                                               ; preds = %27
  %52 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %11, align 8
  %53 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %56 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %57 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %56, i64 2
  %58 = call i32 @gfs2_holder_init(i32 %54, i32 %55, i32 0, %struct.gfs2_holder* %57)
  %59 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %60 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %146

64:                                               ; preds = %51
  %65 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %66 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %65, i64 1
  %67 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %143

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %139

79:                                               ; preds = %71
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISDIR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOTEMPTY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %89 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 2
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %85
  br label %139

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %79
  %100 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %101 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %100, i64 2
  %102 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %139

106:                                              ; preds = %99
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %108 = load %struct.dentry*, %struct.dentry** %5, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 0
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %111 = call i32 @gfs2_unlink_ok(%struct.gfs2_inode* %107, i32* %109, %struct.gfs2_inode* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %135

115:                                              ; preds = %106
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %117 = load i32, i32* @RES_DINODE, align 4
  %118 = mul nsw i32 2, %117
  %119 = load i32, i32* @RES_LEAF, align 4
  %120 = mul nsw i32 3, %119
  %121 = add nsw i32 %118, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @RES_RG_BIT, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %116, i64 %124, i32 0)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %135

129:                                              ; preds = %115
  %130 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %131 = load %struct.dentry*, %struct.dentry** %5, align 8
  %132 = call i32 @gfs2_unlink_inode(%struct.gfs2_inode* %130, %struct.dentry* %131)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %134 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %133)
  br label %135

135:                                              ; preds = %129, %128, %114
  %136 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %137 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %136, i64 2
  %138 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %137)
  br label %139

139:                                              ; preds = %135, %105, %97, %78
  %140 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %141 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %140, i64 1
  %142 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %141)
  br label %143

143:                                              ; preds = %139, %70
  %144 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %145 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %144)
  br label %146

146:                                              ; preds = %143, %63
  %147 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %148 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %147, i64 2
  %149 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %148)
  br label %150

150:                                              ; preds = %146, %50
  %151 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %152 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %151, i64 1
  %153 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %152)
  %154 = getelementptr inbounds [3 x %struct.gfs2_holder], [3 x %struct.gfs2_holder]* %10, i64 0, i64 0
  %155 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %25
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @gfs2_unlink_ok(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_unlink_inode(%struct.gfs2_inode*, %struct.dentry*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
