; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c__posix_to_nfsv4_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c__posix_to_nfsv4_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i64, i32, i32 }
%struct.nfs4_acl = type { i32, %struct.nfs4_ace* }
%struct.nfs4_ace = type { i32, i8*, i8*, i8*, i32, i32 }
%struct.posix_acl_summary = type { i16, i16, i16, i16, i16, i16 }

@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@NFS4_INHERITANCE_FLAGS = common dso_local global i32 0, align 4
@NFS4_ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@NFS4_ACE_ACCESS_DENIED_ACE_TYPE = common dso_local global i8* null, align 8
@NFS4_ACL_WHO_OWNER = common dso_local global i8* null, align 8
@NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE = common dso_local global i8* null, align 8
@NFS4_ACL_OWNER = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i64 0, align 8
@NFS4_ACL_WHO_NAMED = common dso_local global i8* null, align 8
@NFS4_ACL_WHO_GROUP = common dso_local global i8* null, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@NFS4_ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@ACL_MASK = common dso_local global i64 0, align 8
@NFS4_ACL_WHO_EVERYONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl*, %struct.nfs4_acl*, i32)* @_posix_to_nfsv4_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_posix_to_nfsv4_one(%struct.posix_acl* %0, %struct.nfs4_acl* %1, i32 %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.nfs4_acl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl_entry*, align 8
  %8 = alloca %struct.posix_acl_entry*, align 8
  %9 = alloca %struct.nfs4_ace*, align 8
  %10 = alloca %struct.posix_acl_summary, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %4, align 8
  store %struct.nfs4_acl* %1, %struct.nfs4_acl** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @NFS4_INHERITANCE_FLAGS, align 4
  %19 = load i32, i32* @NFS4_ACE_INHERIT_ONLY_ACE, align 4
  %20 = or i32 %18, %19
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %12, align 4
  %24 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %25 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 3
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %31 = call i32 @summarize_posix_acl(%struct.posix_acl* %30, %struct.posix_acl_summary* %10)
  %32 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %33 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %32, i32 0, i32 1
  %34 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %33, align 8
  store %struct.posix_acl_entry* %34, %struct.posix_acl_entry** %7, align 8
  %35 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %36 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %35, i32 0, i32 1
  %37 = load %struct.nfs4_ace*, %struct.nfs4_ace** %36, align 8
  %38 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %39 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %37, i64 %41
  store %struct.nfs4_ace* %42, %struct.nfs4_ace** %9, align 8
  %43 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 0
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %11, align 2
  %48 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 1
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 2
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 3
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 4
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %58, %61
  %63 = load i16, i16* %11, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %64, %62
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %11, align 2
  %67 = load i16, i16* %11, align 2
  %68 = icmp ne i16 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %22
  %70 = load i8*, i8** @NFS4_ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %71 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %72 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %75 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i16, i16* %11, align 2
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @deny_mask_from_posix(i16 zeroext %76, i32 %77)
  %79 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %80 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @NFS4_ACL_WHO_OWNER, align 8
  %82 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %83 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %85 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %84, i32 1
  store %struct.nfs4_ace* %85, %struct.nfs4_ace** %9, align 8
  %86 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %69, %22
  %91 = load i8*, i8** @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %92 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %93 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %96 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %98 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NFS4_ACL_OWNER, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @mask_from_posix(i32 %99, i32 %102)
  %104 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %105 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @NFS4_ACL_WHO_OWNER, align 8
  %107 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %108 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %110 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %109, i32 1
  store %struct.nfs4_ace* %110, %struct.nfs4_ace** %9, align 8
  %111 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %112 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %116 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %115, i32 1
  store %struct.posix_acl_entry* %116, %struct.posix_acl_entry** %7, align 8
  br label %117

117:                                              ; preds = %176, %90
  %118 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %119 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ACL_USER, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %210

123:                                              ; preds = %117
  %124 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %125 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 5
  %128 = load i16, i16* %127, align 2
  %129 = zext i16 %128 to i32
  %130 = and i32 %126, %129
  %131 = xor i32 %130, -1
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %11, align 2
  %133 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 3
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 2
  %137 = load i16, i16* %136, align 2
  %138 = zext i16 %137 to i32
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 4
  %141 = load i16, i16* %140, align 2
  %142 = zext i16 %141 to i32
  %143 = or i32 %139, %142
  %144 = load i16, i16* %11, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, %143
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %11, align 2
  %148 = load i16, i16* %11, align 2
  %149 = icmp ne i16 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %123
  %151 = load i8*, i8** @NFS4_ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %152 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %153 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %156 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i16, i16* %11, align 2
  %158 = load i32, i32* %6, align 4
  %159 = call i8* @deny_mask_from_posix(i16 zeroext %157, i32 %158)
  %160 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %161 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @NFS4_ACL_WHO_NAMED, align 8
  %163 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %164 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %166 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %169 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %171 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %170, i32 1
  store %struct.nfs4_ace* %171, %struct.nfs4_ace** %9, align 8
  %172 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %173 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %150, %123
  %177 = load i8*, i8** @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %178 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %179 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %182 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %184 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 5
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = and i32 %185, %188
  %190 = load i32, i32* %6, align 4
  %191 = call i8* @mask_from_posix(i32 %189, i32 %190)
  %192 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %193 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @NFS4_ACL_WHO_NAMED, align 8
  %195 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %196 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %198 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %201 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  %202 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %203 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %202, i32 1
  store %struct.nfs4_ace* %203, %struct.nfs4_ace** %9, align 8
  %204 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %205 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  %208 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %209 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %208, i32 1
  store %struct.posix_acl_entry* %209, %struct.posix_acl_entry** %7, align 8
  br label %117

210:                                              ; preds = %117
  %211 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  store %struct.posix_acl_entry* %211, %struct.posix_acl_entry** %8, align 8
  %212 = load i8*, i8** @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %213 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %214 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %217 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 2
  %219 = load i16, i16* %218, align 2
  %220 = zext i16 %219 to i32
  %221 = load i32, i32* %6, align 4
  %222 = call i8* @mask_from_posix(i32 %220, i32 %221)
  %223 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %224 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @NFS4_ACL_WHO_GROUP, align 8
  %226 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %227 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %229 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %228, i32 1
  store %struct.nfs4_ace* %229, %struct.nfs4_ace** %9, align 8
  %230 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %231 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %235 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %234, i32 1
  store %struct.posix_acl_entry* %235, %struct.posix_acl_entry** %7, align 8
  br label %236

236:                                              ; preds = %242, %210
  %237 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %238 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @ACL_GROUP, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %278

242:                                              ; preds = %236
  %243 = load i8*, i8** @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %244 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %245 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @NFS4_ACE_IDENTIFIER_GROUP, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %250 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %252 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 5
  %255 = load i16, i16* %254, align 2
  %256 = zext i16 %255 to i32
  %257 = and i32 %253, %256
  %258 = load i32, i32* %6, align 4
  %259 = call i8* @mask_from_posix(i32 %257, i32 %258)
  %260 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %261 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load i8*, i8** @NFS4_ACL_WHO_NAMED, align 8
  %263 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %264 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  %265 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %266 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %269 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 8
  %270 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %271 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %270, i32 1
  store %struct.nfs4_ace* %271, %struct.nfs4_ace** %9, align 8
  %272 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %273 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 8
  %276 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %277 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %276, i32 1
  store %struct.posix_acl_entry* %277, %struct.posix_acl_entry** %7, align 8
  br label %236

278:                                              ; preds = %236
  %279 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %8, align 8
  store %struct.posix_acl_entry* %279, %struct.posix_acl_entry** %7, align 8
  %280 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 2
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = xor i32 %282, -1
  %284 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 4
  %285 = load i16, i16* %284, align 2
  %286 = zext i16 %285 to i32
  %287 = and i32 %283, %286
  %288 = trunc i32 %287 to i16
  store i16 %288, i16* %11, align 2
  %289 = load i16, i16* %11, align 2
  %290 = icmp ne i16 %289, 0
  br i1 %290, label %291, label %312

291:                                              ; preds = %278
  %292 = load i8*, i8** @NFS4_ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %293 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %294 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %293, i32 0, i32 3
  store i8* %292, i8** %294, align 8
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %297 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i16, i16* %11, align 2
  %299 = load i32, i32* %6, align 4
  %300 = call i8* @deny_mask_from_posix(i16 zeroext %298, i32 %299)
  %301 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %302 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %301, i32 0, i32 2
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** @NFS4_ACL_WHO_GROUP, align 8
  %304 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %305 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %307 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %306, i32 1
  store %struct.nfs4_ace* %307, %struct.nfs4_ace** %9, align 8
  %308 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %309 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %291, %278
  %313 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %314 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %313, i32 1
  store %struct.posix_acl_entry* %314, %struct.posix_acl_entry** %7, align 8
  br label %315

315:                                              ; preds = %368, %312
  %316 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %317 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @ACL_GROUP, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %371

321:                                              ; preds = %315
  %322 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %323 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 5
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %324, %327
  %329 = xor i32 %328, -1
  %330 = trunc i32 %329 to i16
  store i16 %330, i16* %11, align 2
  %331 = getelementptr inbounds %struct.posix_acl_summary, %struct.posix_acl_summary* %10, i32 0, i32 4
  %332 = load i16, i16* %331, align 2
  %333 = zext i16 %332 to i32
  %334 = load i16, i16* %11, align 2
  %335 = zext i16 %334 to i32
  %336 = and i32 %335, %333
  %337 = trunc i32 %336 to i16
  store i16 %337, i16* %11, align 2
  %338 = load i16, i16* %11, align 2
  %339 = icmp ne i16 %338, 0
  br i1 %339, label %340, label %368

340:                                              ; preds = %321
  %341 = load i8*, i8** @NFS4_ACE_ACCESS_DENIED_ACE_TYPE, align 8
  %342 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %343 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %342, i32 0, i32 3
  store i8* %341, i8** %343, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* @NFS4_ACE_IDENTIFIER_GROUP, align 4
  %346 = or i32 %344, %345
  %347 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %348 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  %349 = load i16, i16* %11, align 2
  %350 = load i32, i32* %6, align 4
  %351 = call i8* @deny_mask_from_posix(i16 zeroext %349, i32 %350)
  %352 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %353 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %352, i32 0, i32 2
  store i8* %351, i8** %353, align 8
  %354 = load i8*, i8** @NFS4_ACL_WHO_NAMED, align 8
  %355 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %356 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  %357 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %358 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %361 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %360, i32 0, i32 4
  store i32 %359, i32* %361, align 8
  %362 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %363 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %362, i32 1
  store %struct.nfs4_ace* %363, %struct.nfs4_ace** %9, align 8
  %364 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %365 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %340, %321
  %369 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %370 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %369, i32 1
  store %struct.posix_acl_entry* %370, %struct.posix_acl_entry** %7, align 8
  br label %315

371:                                              ; preds = %315
  %372 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %373 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @ACL_MASK, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %371
  %378 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %379 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %378, i32 1
  store %struct.posix_acl_entry* %379, %struct.posix_acl_entry** %7, align 8
  br label %380

380:                                              ; preds = %377, %371
  %381 = load i8*, i8** @NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE, align 8
  %382 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %383 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %382, i32 0, i32 3
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* %12, align 4
  %385 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %386 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %385, i32 0, i32 0
  store i32 %384, i32* %386, align 8
  %387 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %388 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %6, align 4
  %391 = call i8* @mask_from_posix(i32 %389, i32 %390)
  %392 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %393 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %392, i32 0, i32 2
  store i8* %391, i8** %393, align 8
  %394 = load i8*, i8** @NFS4_ACL_WHO_EVERYONE, align 8
  %395 = load %struct.nfs4_ace*, %struct.nfs4_ace** %9, align 8
  %396 = getelementptr inbounds %struct.nfs4_ace, %struct.nfs4_ace* %395, i32 0, i32 1
  store i8* %394, i8** %396, align 8
  %397 = load %struct.nfs4_acl*, %struct.nfs4_acl** %5, align 8
  %398 = getelementptr inbounds %struct.nfs4_acl, %struct.nfs4_acl* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @summarize_posix_acl(%struct.posix_acl*, %struct.posix_acl_summary*) #1

declare dso_local i8* @deny_mask_from_posix(i16 zeroext, i32) #1

declare dso_local i8* @mask_from_posix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
