; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_prime_dcache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_prime_dcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nfs_entry = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qstr = type { i32, i8*, i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32 }

@wq = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_FSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.nfs_entry*)* @nfs_prime_dcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_prime_dcache(%struct.dentry* %0, %struct.nfs_entry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nfs_entry*, align 8
  %5 = alloca %struct.qstr, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %4, align 8
  %11 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  call void @QSTR_INIT(%struct.qstr* sret %5, i32 %13, i32 %16)
  %17 = load i32, i32* @wq, align 4
  %18 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %17)
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call %struct.inode* @d_inode(%struct.dentry* %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %22 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %216

30:                                               ; preds = %2
  %31 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NFS_ATTR_FATTR_FSID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %216

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %216

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strnlen(i8* %47, i32 %49)
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %216

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strnchr(i8* %57, i32 %59, i8 signext 47)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %216

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %88

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %216

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %216

87:                                               ; preds = %79, %75
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.dentry*, %struct.dentry** %3, align 8
  %90 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @full_name_hash(%struct.dentry* %89, i8* %91, i32 %93)
  %95 = getelementptr inbounds %struct.qstr, %struct.qstr* %5, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load %struct.dentry*, %struct.dentry** %3, align 8
  %97 = call %struct.dentry* @d_lookup(%struct.dentry* %96, %struct.qstr* %5)
  store %struct.dentry* %97, %struct.dentry** %6, align 8
  br label %98

98:                                               ; preds = %163, %88
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = icmp ne %struct.dentry* %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = load %struct.dentry*, %struct.dentry** %3, align 8
  %103 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* %102, %struct.qstr* %5, i32* @wq)
  store %struct.dentry* %103, %struct.dentry** %6, align 8
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  %105 = call i64 @IS_ERR(%struct.dentry* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %216

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %98
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = call i32 @d_in_lookup(%struct.dentry* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %168, label %113

113:                                              ; preds = %109
  %114 = load %struct.dentry*, %struct.dentry** %6, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.TYPE_8__* @NFS_SB(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %120 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = call i32 @nfs_fsid_equal(i32* %118, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  br label %213

126:                                              ; preds = %113
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %129 = call i64 @nfs_same_file(%struct.dentry* %127, %struct.nfs_entry* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %126
  %132 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %133 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %213

139:                                              ; preds = %131
  %140 = load %struct.dentry*, %struct.dentry** %6, align 8
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = call i32 @nfs_save_change_attribute(%struct.inode* %141)
  %143 = call i32 @nfs_set_verifier(%struct.dentry* %140, i32 %142)
  %144 = load %struct.dentry*, %struct.dentry** %6, align 8
  %145 = call %struct.inode* @d_inode(%struct.dentry* %144)
  %146 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %147 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @nfs_refresh_inode(%struct.inode* %145, %struct.TYPE_6__* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %139
  %153 = load %struct.dentry*, %struct.dentry** %6, align 8
  %154 = call %struct.inode* @d_inode(%struct.dentry* %153)
  %155 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %156 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %159 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @nfs_setsecurity(%struct.inode* %154, %struct.TYPE_6__* %157, i32 %160)
  br label %162

162:                                              ; preds = %152, %139
  br label %213

163:                                              ; preds = %126
  %164 = load %struct.dentry*, %struct.dentry** %6, align 8
  %165 = call i32 @d_invalidate(%struct.dentry* %164)
  %166 = load %struct.dentry*, %struct.dentry** %6, align 8
  %167 = call i32 @dput(%struct.dentry* %166)
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %98

168:                                              ; preds = %109
  %169 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %170 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %168
  %176 = load %struct.dentry*, %struct.dentry** %6, align 8
  %177 = call i32 @d_lookup_done(%struct.dentry* %176)
  br label %213

178:                                              ; preds = %168
  %179 = load %struct.dentry*, %struct.dentry** %6, align 8
  %180 = getelementptr inbounds %struct.dentry, %struct.dentry* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %183 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %186 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %189 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call %struct.inode* @nfs_fhget(i32 %181, %struct.TYPE_7__* %184, %struct.TYPE_6__* %187, i32 %190)
  store %struct.inode* %191, %struct.inode** %9, align 8
  %192 = load %struct.inode*, %struct.inode** %9, align 8
  %193 = load %struct.dentry*, %struct.dentry** %6, align 8
  %194 = call %struct.dentry* @d_splice_alias(%struct.inode* %192, %struct.dentry* %193)
  store %struct.dentry* %194, %struct.dentry** %7, align 8
  %195 = load %struct.dentry*, %struct.dentry** %6, align 8
  %196 = call i32 @d_lookup_done(%struct.dentry* %195)
  %197 = load %struct.dentry*, %struct.dentry** %7, align 8
  %198 = icmp ne %struct.dentry* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %178
  %200 = load %struct.dentry*, %struct.dentry** %7, align 8
  %201 = call i64 @IS_ERR(%struct.dentry* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %213

204:                                              ; preds = %199
  %205 = load %struct.dentry*, %struct.dentry** %6, align 8
  %206 = call i32 @dput(%struct.dentry* %205)
  %207 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %207, %struct.dentry** %6, align 8
  br label %208

208:                                              ; preds = %204, %178
  %209 = load %struct.dentry*, %struct.dentry** %6, align 8
  %210 = load %struct.inode*, %struct.inode** %8, align 8
  %211 = call i32 @nfs_save_change_attribute(%struct.inode* %210)
  %212 = call i32 @nfs_set_verifier(%struct.dentry* %209, i32 %211)
  br label %213

213:                                              ; preds = %208, %203, %175, %162, %138, %125
  %214 = load %struct.dentry*, %struct.dentry** %6, align 8
  %215 = call i32 @dput(%struct.dentry* %214)
  br label %216

216:                                              ; preds = %213, %107, %86, %74, %62, %54, %44, %39, %29
  ret void
}

declare dso_local void @QSTR_INIT(%struct.qstr* sret, i32, i32) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i64 @strnchr(i8*, i32, i8 signext) #1

declare dso_local i32 @full_name_hash(%struct.dentry*, i8*, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @nfs_fsid_equal(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @NFS_SB(i32) #1

declare dso_local i64 @nfs_same_file(%struct.dentry*, %struct.nfs_entry*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.TYPE_6__*) #1

declare dso_local i32 @nfs_setsecurity(%struct.inode*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

declare dso_local %struct.inode* @nfs_fhget(i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
