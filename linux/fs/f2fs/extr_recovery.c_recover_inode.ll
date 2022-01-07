; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.page = type { i32 }
%struct.f2fs_inode = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8**, i8*, i32, i32 }

@F2FS_EXTRA_ATTR = common dso_local global i32 0, align 4
@i_projid = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@GC_FAILURE_PIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"<encrypted>\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"recover_inode: ino = %x, name = %s, inline = %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*)* @recover_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_inode(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %11)
  store %struct.f2fs_inode* %12, %struct.f2fs_inode** %6, align 8
  %13 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %14 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @le16_to_cpu(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @recover_quota_data(%struct.inode* %19, %struct.page* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %187

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = call i32 @i_uid_write(%struct.inode* %27, i8* %31)
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %35 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = call i32 @i_gid_write(%struct.inode* %33, i8* %37)
  %39 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %40 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @F2FS_EXTRA_ATTR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32 @F2FS_I_SB(%struct.inode* %46)
  %48 = call i64 @f2fs_sb_has_project_quota(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %52 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %53 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le16_to_cpu(i32 %54)
  %56 = load i32, i32* @i_projid, align 4
  %57 = call i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode* %51, i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %50
  %60 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %61 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @make_kprojid(i32* @init_user_ns, i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @projid_eq(i32 %67, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %59
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @f2fs_transfer_project_quota(%struct.inode* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %187

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %59
  br label %88

88:                                               ; preds = %87, %50, %45
  br label %89

89:                                               ; preds = %88, %26
  %90 = load %struct.inode*, %struct.inode** %4, align 8
  %91 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %92 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %91, i32 0, i32 11
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le64_to_cpu(i32 %93)
  %95 = call i32 @f2fs_i_size_write(%struct.inode* %90, i8* %94)
  %96 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %97 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le64_to_cpu(i32 %98)
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %104 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le64_to_cpu(i32 %105)
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %111 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @le64_to_cpu(i32 %112)
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %118 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @le32_to_cpu(i32 %119)
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i8* %120, i8** %123, align 8
  %124 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %125 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @le32_to_cpu(i32 %126)
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  %131 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %132 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le32_to_cpu(i32 %133)
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  %138 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %139 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %145 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @le32_to_cpu(i32 %146)
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %148)
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i8* %147, i8** %150, align 8
  %151 = load %struct.inode*, %struct.inode** %4, align 8
  %152 = call i32 @f2fs_set_inode_flags(%struct.inode* %151)
  %153 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %154 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @le16_to_cpu(i32 %155)
  %157 = load %struct.inode*, %struct.inode** %4, align 8
  %158 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = load i64, i64* @GC_FAILURE_PIN, align 8
  %162 = getelementptr inbounds i8*, i8** %160, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %165 = call i32 @recover_inline_flags(%struct.inode* %163, %struct.f2fs_inode* %164)
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %166, i32 1)
  %168 = load %struct.inode*, %struct.inode** %4, align 8
  %169 = call i64 @file_enc_name(%struct.inode* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %89
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %177

172:                                              ; preds = %89
  %173 = load %struct.page*, %struct.page** %5, align 8
  %174 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %173)
  %175 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %7, align 8
  br label %177

177:                                              ; preds = %172, %171
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call i32 @F2FS_I_SB(%struct.inode* %178)
  %180 = load %struct.page*, %struct.page** %5, align 8
  %181 = call i32 @ino_of_node(%struct.page* %180)
  %182 = load i8*, i8** %7, align 8
  %183 = load %struct.f2fs_inode*, %struct.f2fs_inode** %6, align 8
  %184 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @f2fs_notice(i32 %179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %181, i8* %182, i32 %185)
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %177, %80, %24
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @recover_quota_data(%struct.inode*, %struct.page*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i8*) #1

declare dso_local i64 @f2fs_sb_has_project_quota(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @F2FS_FITS_IN_INODE(%struct.f2fs_inode*, i8*, i32) #1

declare dso_local i32 @make_kprojid(i32*, i64) #1

declare dso_local i32 @projid_eq(i32, i32) #1

declare dso_local %struct.TYPE_8__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_transfer_project_quota(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @f2fs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @recover_inline_flags(%struct.inode*, %struct.f2fs_inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i64 @file_enc_name(%struct.inode*) #1

declare dso_local i32 @f2fs_notice(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
